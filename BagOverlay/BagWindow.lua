-- BagWindow - Main window for the inventory overlay

import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "GymGnopf.BagOverlay.InventoryManager";

BagWindow         = {};

local ITEM_SIZE   = 36;
local MARGIN      = 15;
local SIDE_PAD    = 20;
local LABEL_H     = 18;
local ROW_GAP     = 20;
local TOP_MARGIN  = 40;
local SCROLLBAR_W = 10;
local PANEL_H     = 26;
local PANEL_GAP   = 6;
-- Window width
local MIN_W       = 340;
local MIN_H       = 400;
local MAX_W       = 480;
local MAX_H       = 1200;
-- Money display constants
local COIN_W      = 27;
local COIN_H      = 16;
local NUM_W       = 30;
local GROUP_W     = NUM_W + 2 + COIN_W;
local totalMoneyW = GROUP_W * 3;

local function getLayoutDims()
    local w, h   = InstanceWindow:GetSize();
    local cw     = w - MARGIN * 2 - SCROLLBAR_W - 4;
    local ah     = h - TOP_MARGIN - MARGIN - PANEL_H - PANEL_GAP;
    local perRow = math.max(1, math.floor(cw / ITEM_SIZE));
    return cw, ah, perRow;
end

local function categoryHeight(items, itemsPerRow)
    local rows = math.ceil(#items / itemsPerRow);
    return LABEL_H + 4 + rows * ITEM_SIZE;
end

local function buildCategoryBlock(parent, name, items, x, y, colWidth, itemsPerRow)
    local label = Turbine.UI.Label();
    label:SetParent(parent);
    label:SetPosition(x, y);
    label:SetSize(colWidth, LABEL_H);
    label:SetText(name .. " (" .. #items .. ")");
    label:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
    label:SetForeColor(Turbine.UI.Color(1, 0.85, 0.5));

    local gridH = math.ceil(#items / itemsPerRow) * ITEM_SIZE;
    local grid  = Turbine.UI.ListBox();
    grid:SetParent(parent);
    grid:SetPosition(x, y + LABEL_H + 4);
    grid:SetSize(colWidth, gridH);
    grid:SetOrientation(Turbine.UI.Orientation.Horizontal);
    grid:SetMaxItemsPerLine(itemsPerRow);

    for j = 1, #items do
        local ic = Turbine.UI.Lotro.ItemControl();
        ic:SetSize(ITEM_SIZE, ITEM_SIZE);
        ic:SetItem(items[j].item);
        grid:AddItem(ic);
    end
end

function BagWindow:CreateInstanceWindow()
    local sw, sh = Turbine.UI.Display:GetSize();
    local ws = Settings:GetWindowSettings();
    InstanceWindow = Turbine.UI.Lotro.Window();
    InstanceWindow:SetSize(ws.width, ws.height);
    InstanceWindow:SetText("Inventory");
    InstanceWindow:SetPosition(sw - ws.width - 20, (sh - ws.height) / 2);
    InstanceWindow:SetZOrder(11);
    InstanceWindow:SetResizable(true);
    InstanceWindow:SetMinimumSize(MIN_W, MIN_H);
    InstanceWindow:SetMaximumSize(MAX_W, MAX_H);
    InstanceWindow:SetVisible(false);
end

function BagWindow:Show()
    InstanceWindow:SetVisible(true);
end

function BagWindow:Init()
    self.contentList = Turbine.UI.ListBox();
    self.contentList:SetParent(InstanceWindow);
    self.contentList:SetPosition(MARGIN, TOP_MARGIN);

    self.scrollBar = Turbine.UI.Lotro.ScrollBar();
    self.scrollBar:SetParent(InstanceWindow);
    self.scrollBar:SetOrientation(Turbine.UI.Orientation.Vertical);
    self.scrollBar:SetMinimum(0);
    self.scrollBar:SetMaximum(3000);
    self.scrollBar:SetValue(0);

    self.scrollBar.ValueChanged = function()
        self.contentList:SetTop(0 - self.contentList:GetValue());
    end
    self.contentList:SetVerticalScrollBar(self.scrollBar);

    -- Bottom status panel
    self:SubscribeWallet();

    self.slotsLabel = Turbine.UI.Label();
    self.slotsLabel:SetParent(InstanceWindow);
    self.slotsLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
    self.slotsLabel:SetForeColor(Turbine.UI.Color(0.7, 0.7, 0.7));
    self.slotsLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    local coinImageIDs = { 0x41007e7b, 0x41007e7c, 0x41007e7d };
    self.moneyNums     = {};
    self.moneyIcons    = {};
    for d = 1, 3 do
        local numLabel = Turbine.UI.Label();
        numLabel:SetParent(InstanceWindow);
        numLabel:SetSize(NUM_W, PANEL_H);
        numLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
        numLabel:SetForeColor(Turbine.UI.Color(1, 0.85, 0.5));
        numLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleRight);

        local icon = Turbine.UI.Control();
        icon:SetParent(InstanceWindow);
        icon:SetSize(COIN_W, COIN_H);
        icon:SetBlendMode(Turbine.UI.BlendMode.Overlay);
        icon:SetBackground(coinImageIDs[d]);

        self.moneyNums[d]  = numLabel;
        self.moneyIcons[d] = icon;
    end

    self:Layout();

    InstanceWindow.SizeChanged = function()
        BagWindow:Layout();
    end;

    InventoryManager:SetCategoryUpdatedCallback(function()
        BagWindow:BuildContent();
    end);
    InventoryManager:SetInventoryRefreshedCallback(function()
        BagWindow:BuildContent();
    end);
end

function BagWindow:Layout()
    local w, h      = InstanceWindow:GetSize();
    local cw, ah, _ = getLayoutDims();
    local panelY    = TOP_MARGIN + ah + PANEL_GAP;

    self.contentList:SetSize(cw, ah);
    self.scrollBar:SetPosition(w - MARGIN - SCROLLBAR_W, TOP_MARGIN);
    self.scrollBar:SetSize(SCROLLBAR_W, ah);

    self.slotsLabel:SetPosition(MARGIN + SIDE_PAD, panelY);
    self.slotsLabel:SetSize(math.floor(cw / 2), PANEL_H);

    -- Reposition coin labels/icons (right-aligned)
    local baseX = w - MARGIN - math.floor(SIDE_PAD / 2) - totalMoneyW;
    local coinY = panelY + math.floor((PANEL_H - COIN_H) / 2);
    for d = 1, 3 do
        local gx = baseX + (d - 1) * GROUP_W;
        self.moneyNums[d]:SetPosition(gx, panelY);
        self.moneyIcons[d]:SetPosition(gx + NUM_W + 4, coinY);
    end

    Settings:SetWindowSize(w, h);
    self:BuildContent();
end

function BagWindow:SubscribeWallet()
    local player = Turbine.Gameplay.LocalPlayer:GetInstance();
    self.wallet = player:GetWallet();

    local function onChange()
        BagWindow:UpdateStatusBar();
    end

    for i = 1, self.wallet:GetSize() do
        local walletItem = self.wallet:GetItem(i);
        if walletItem ~= nil then
            walletItem.QuantityChanged = onChange;
        end
    end

    self.wallet.ItemAdded = function(sender, args)
        local walletItem = self.wallet:GetItem(args.Index);
        if walletItem ~= nil then
            walletItem.QuantityChanged = onChange;
        end
        BagWindow:UpdateStatusBar();
    end;
    self.wallet.ItemRemoved = onChange;
end

function BagWindow:UpdateStatusBar()
    if self.slotsLabel == nil or self.moneyNums == nil then return; end

    local used  = InventoryManager:GetUsedSlotCount();
    local total = InventoryManager:GetTotalSlotCount();
    self.slotsLabel:SetText(used .. " / " .. total .. " slots");

    local player = Turbine.Gameplay.LocalPlayer:GetInstance();
    local copper, silver, gold = player:GetAttributes():GetMoneyComponents();
    local amounts = { gold, silver, copper };
    for d = 1, 3 do
        if self.moneyNums[d] ~= nil then
            self.moneyNums[d]:SetText(tostring(amounts[d]));
        end
    end
end

function BagWindow:BuildContent()
    self.contentList:ClearItems();
    self.contentList:SetTop(TOP_MARGIN);

    local cw, _, perRow    = getLayoutDims();
    local categories       = InventoryManager:GetAllCategories();

    local categorySections = {};
    for i = 1, #categories do
        local items = InventoryManager:GetItemsInCategory(categories[i]);
        if #items > 0 then
            table.insert(categorySections, { name = categories[i], items = items });
        end
    end

    categorySections = BagWindow:SortItems(categorySections);

    for i = 1, #categorySections do
        local cat    = categorySections[i];
        local blockH = categoryHeight(cat.items, perRow) + ROW_GAP;

        local row    = Turbine.UI.Control();
        row:SetSize(cw, blockH);

        buildCategoryBlock(row, cat.name, cat.items, 0, 0, cw, perRow);
        self.contentList:AddItem(row);
    end

    self:UpdateStatusBar();
end

function BagWindow:SortItems(categorySections)
    for i = 1, #categorySections do
        table.sort(categorySections[i].items, function(a, b)
            local catA = Item:GetCategoryIndex(a.item);
            local catB = Item:GetCategoryIndex(b.item);
            if catA ~= catB then return catA < catB end;
            return Item:GetName(a.item) < Item:GetName(b.item);
        end);
    end
    return categorySections
end
