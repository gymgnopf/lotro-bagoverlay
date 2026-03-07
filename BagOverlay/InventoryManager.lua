-- InventoryManager - Manages backpack data and categorization

import "Turbine.Gameplay";
import "GymGnopf.BagOverlay.CategoryMapper";

InventoryManager = {};

-- Storage for categorized items
InventoryManager.itemsByCategory = {};
InventoryManager.itemIndexMap = {};
InventoryManager.backpack = nil;
InventoryManager.initialized = false;

-- Callbacks for UI updates
InventoryManager.onCategoryUpdated = nil;
InventoryManager.onInventoryRefreshed = nil;

-- Initialize the inventory manager
function InventoryManager:Initialize()
    if self.initialized then
        return;
    end

    BagOverlay.Log("Initializing InventoryManager...");

    -- Get the player's backpack
    local player = Turbine.Gameplay.LocalPlayer:GetInstance();
    self.backpack = player:GetBackpack();

    -- Initialize category storage
    local categories = CategoryMapper:GetAllCategories();
    for i = 1, #categories do
        self.itemsByCategory[categories[i]] = {};
    end

    -- Scan initial inventory
    self:ScanBackpack();

    -- Subscribe to backpack events
    self:SubscribeToEvents();

    self.initialized = true;
    BagOverlay.Log("InventoryManager initialized successfully.");
end

-- Scan the entire backpack and categorize all items
function InventoryManager:ScanBackpack()
    if self.backpack == nil then
        return;
    end

    -- Clear existing data
    local categories = CategoryMapper:GetAllCategories();
    for i = 1, #categories do
        self.itemsByCategory[categories[i]] = {};
    end
    self.itemIndexMap = {};

    local size = self.backpack:GetSize();
    local itemCount = 0;
    BagOverlay.Log("Scanning backpack (" .. size .. " slots)...");

    -- Iterate through all backpack slots
    for slotIndex = 1, size do
        local item = self.backpack:GetItem(slotIndex);
        if item ~= nil then
            self:AddItemToCache(item, slotIndex);
            itemCount = itemCount + 1;
        end
    end

    BagOverlay.Log("Scan complete: " .. itemCount .. " items found.");

    -- Notify UI of complete refresh
    if self.onInventoryRefreshed ~= nil then
        self.onInventoryRefreshed();
    end
end

-- Add an item to the category cache
function InventoryManager:AddItemToCache(item, slotIndex)
    local category = CategoryMapper:GetCategory(item);

    -- Ensure category array exists
    if self.itemsByCategory[category] == nil then
        self.itemsByCategory[category] = {};
    end

    -- Add item to category
    table.insert(self.itemsByCategory[category], {
        item = item,
        slotIndex = slotIndex
    });

    -- Update index map
    self.itemIndexMap[slotIndex] = {
        item = item,
        category = category
    };

    BagOverlay.Log("AddItemToCache: slot " .. slotIndex .. " -> " .. category);
end

-- Remove an item from the category cache
function InventoryManager:RemoveItemFromCache(slotIndex)
    local cached = self.itemIndexMap[slotIndex];
    if cached == nil then
        return nil;
    end

    local category = cached.category;

    -- Remove from category array
    if self.itemsByCategory[category] ~= nil then
        for i = #self.itemsByCategory[category], 1, -1 do
            if self.itemsByCategory[category][i].slotIndex == slotIndex then
                table.remove(self.itemsByCategory[category], i);
                break;
            end
        end
    end

    -- Remove from index map
    self.itemIndexMap[slotIndex] = nil;

    return category;
end

-- Subscribe to backpack events
function InventoryManager:SubscribeToEvents()
    if self.backpack == nil then
        return;
    end

    -- Item added event
    self.backpack.ItemAdded = function(sender, args)
        local item = self.backpack:GetItem(args.Index);
        if item ~= nil then
            self:AddItemToCache(item, args.Index);
            BagOverlay.Log("Event ItemAdded: slot " .. args.Index);

            local category = CategoryMapper:GetCategory(item);
            if self.onCategoryUpdated ~= nil then
                self.onCategoryUpdated(category);
            end
        end
    end;

    -- Item removed event
    self.backpack.ItemRemoved = function(sender, args)
        BagOverlay.Log("Event ItemRemoved: slot " .. args.Index);
        local category = self:RemoveItemFromCache(args.Index);
        if category ~= nil and self.onCategoryUpdated ~= nil then
            self.onCategoryUpdated(category);
        end
    end;

    -- Item moved event (position changed)
    self.backpack.ItemMoved = function(sender, args)
        BagOverlay.Log("Event ItemMoved: slot " .. args.OldIndex .. " -> " .. args.NewIndex);
        self:RemoveItemFromCache(args.OldIndex);

        local item = self.backpack:GetItem(args.NewIndex);
        if item ~= nil then
            self:AddItemToCache(item, args.NewIndex);
        end

        if self.onInventoryRefreshed ~= nil then
            self.onInventoryRefreshed();
        end
    end;

    -- Backpack size changed event
    self.backpack.SizeChanged = function(sender, args)
        BagOverlay.Log("Event SizeChanged: rescanning backpack.");
        self:ScanBackpack();
    end;
end

-- Get all items in a specific category
function InventoryManager:GetItemsInCategory(category)
    return self.itemsByCategory[category] or {};
end

-- Get all categories
function InventoryManager:GetAllCategories()
    return CategoryMapper:GetAllCategories();
end

-- Get the number of occupied backpack slots
function InventoryManager:GetUsedSlotCount()
    local count = 0;
    for _ in pairs(self.itemIndexMap) do
        count = count + 1;
    end
    return count;
end

-- Get the total backpack capacity
function InventoryManager:GetTotalSlotCount()
    if self.backpack == nil then return 0; end
    return self.backpack:GetSize();
end

-- Get item count for a category
function InventoryManager:GetCategoryItemCount(category)
    local items = self.itemsByCategory[category];
    return items ~= nil and #items or 0;
end

-- Set callback for when a category is updated
function InventoryManager:SetCategoryUpdatedCallback(callback)
    self.onCategoryUpdated = callback;
end

-- Set callback for when the entire inventory is refreshed
function InventoryManager:SetInventoryRefreshedCallback(callback)
    self.onInventoryRefreshed = callback;
end

-- Cleanup
function InventoryManager:Cleanup()
    if self.backpack ~= nil then
        self.backpack.ItemAdded = nil;
        self.backpack.ItemRemoved = nil;
        self.backpack.ItemMoved = nil;
        self.backpack.SizeChanged = nil;
    end

    self.initialized = false;
end
