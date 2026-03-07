-- BagWindow - Main window for the inventory overlay

import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "GymGnopf.BagOverlay.InventoryManager";

BagWindow           = {};

local WIN_WIDTH     = 520;
local WIN_HEIGHT    = 600;
local ITEM_SIZE     = 36;
local ITEMS_PER_ROW = 6;
local MARGIN        = 15;
local COL_GAP       = 12;
local LABEL_H       = 18;
local ROW_GAP       = 20;
local TOP_MARGIN    = 40;
local SCROLLBAR_W   = 10;

local PANEL_H       = 26;
local PANEL_GAP     = 6;

local CONTENT_W     = WIN_WIDTH - MARGIN * 2 - SCROLLBAR_W - 4;
local AREA_H        = WIN_HEIGHT - TOP_MARGIN - MARGIN - PANEL_H - PANEL_GAP;

local function categoryHeight(items)
    local rows = math.ceil(#items / ITEMS_PER_ROW);
    return LABEL_H + 4 + rows * ITEM_SIZE;
end

local function buildCategoryBlock(parent, name, items, x, y, colWidth)
    local label = Turbine.UI.Label();
    label:SetParent(parent);
    label:SetPosition(x, y);
    label:SetSize(colWidth, LABEL_H);
    label:SetText(name .. " (" .. #items .. ")");
    label:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
    label:SetForeColor(Turbine.UI.Color(1, 0.85, 0.5));

    local gridH = math.ceil(#items / ITEMS_PER_ROW) * ITEM_SIZE;
    local grid  = Turbine.UI.ListBox();
    grid:SetParent(parent);
    grid:SetPosition(x, y + LABEL_H + 4);
    grid:SetSize(colWidth, gridH);
    grid:SetOrientation(Turbine.UI.Orientation.Horizontal);
    grid:SetMaxItemsPerLine(ITEMS_PER_ROW);

    for j = 1, #items do
        local ic = Turbine.UI.Lotro.ItemControl();
        ic:SetSize(ITEM_SIZE, ITEM_SIZE);
        ic:SetItem(items[j].item);
        grid:AddItem(ic);
    end
end

function BagWindow:CreateInstanceWindow()
    local sw, sh = Turbine.UI.Display:GetSize();
    InstanceWindow = Turbine.UI.Lotro.Window();
    InstanceWindow:SetSize(WIN_WIDTH, WIN_HEIGHT);
    InstanceWindow:SetText("Inventory");
    InstanceWindow:SetPosition(sw - WIN_WIDTH - 20, (sh - WIN_HEIGHT) / 2);
    InstanceWindow:SetZOrder(11);
    InstanceWindow:SetVisible(false);
end

function BagWindow:Show()
    InstanceWindow:SetVisible(true);
end

function BagWindow:Init()
    self.contentList = Turbine.UI.ListBox();
    self.contentList:SetParent(InstanceWindow);
    self.contentList:SetPosition(MARGIN, TOP_MARGIN);
    self.contentList:SetSize(CONTENT_W, AREA_H);

    self.scrollBar = Turbine.UI.Lotro.ScrollBar();
    self.scrollBar:SetParent(InstanceWindow);
    self.scrollBar:SetOrientation(Turbine.UI.Orientation.Vertical);
    self.scrollBar:SetPosition(WIN_WIDTH - MARGIN - SCROLLBAR_W, TOP_MARGIN);
    self.scrollBar:SetSize(SCROLLBAR_W, AREA_H);
    self.scrollBar:SetMinimum(0);
    self.scrollBar:SetMaximum(3000);
    self.scrollBar:SetValue(0);

    self.scrollBar.ValueChanged = function()
        self.contentList:SetTop(0 - self.contentList:GetValue());
    end
    self.contentList:SetVerticalScrollBar(self.scrollBar)

    -- Bottom status panel
    self:SubscribeWallet();

    local panelY    = TOP_MARGIN + AREA_H + PANEL_GAP;
    local SIDE_PAD  = 20;

    self.slotsLabel = Turbine.UI.Label();
    self.slotsLabel:SetParent(InstanceWindow);
    self.slotsLabel:SetPosition(MARGIN + SIDE_PAD, panelY);
    self.slotsLabel:SetSize(math.floor(CONTENT_W / 2), PANEL_H);
    self.slotsLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
    self.slotsLabel:SetForeColor(Turbine.UI.Color(0.7, 0.7, 0.7));
    self.slotsLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);

    -- Coin icons via hardcoded game image IDs (27x16 px), same approach as GaranStuff/Wallet
    -- Layout per group: [number] [icon] — icon sits to the right of the number
    local COIN_W       = 27;
    local COIN_H       = 16;
    local NUM_W        = 30;
    local GROUP_W      = NUM_W + 2 + COIN_W;
    local GROUP_GAP    = 0;
    local totalMoneyW  = GROUP_W * 3 + GROUP_GAP * 2;
    -- Right-align the block against the window border, respecting SIDE_PAD
    local baseX        = WIN_WIDTH - MARGIN - (SIDE_PAD / 2) - totalMoneyW;
    local coinY        = panelY + math.floor((PANEL_H - COIN_H) / 2);

    local coinImageIDs = { 0x41007e7b, 0x41007e7c, 0x41007e7d };

    self.moneyNums     = {};
    for d = 1, 3 do
        local gx = baseX + (d - 1) * (GROUP_W + GROUP_GAP);

        local numLabel = Turbine.UI.Label();
        numLabel:SetParent(InstanceWindow);
        numLabel:SetPosition(gx, panelY);
        numLabel:SetSize(NUM_W, PANEL_H);
        numLabel:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
        numLabel:SetForeColor(Turbine.UI.Color(1, 0.85, 0.5));
        numLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleRight);

        local icon = Turbine.UI.Control();
        icon:SetParent(InstanceWindow);
        icon:SetPosition(gx + NUM_W + 4, coinY);
        icon:SetSize(COIN_W, COIN_H);
        icon:SetBlendMode(Turbine.UI.BlendMode.Overlay);
        icon:SetBackground(coinImageIDs[d]);

        self.moneyNums[d] = numLabel;
    end

    self:BuildContent();

    InventoryManager:SetCategoryUpdatedCallback(function()
        BagWindow:BuildContent();
    end);
    InventoryManager:SetInventoryRefreshedCallback(function()
        BagWindow:BuildContent();
    end);
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
    local gold, silver, copper = player:GetAttributes():GetMoneyComponents();
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

    local categories       = InventoryManager:GetAllCategories();
    local colWidth         = math.floor((CONTENT_W - COL_GAP) / 2);

    local categorySections = {};
    for i = 1, #categories do
        local items = InventoryManager:GetItemsInCategory(categories[i]);
        if #items > 0 then
            table.insert(categorySections, { name = categories[i], items = items });
        end
    end

    categorySections = BagWindow:SortItems(categorySections)

    local totalH = 0;
    for i = 1, #categorySections, 2 do
        local leftCat  = categorySections[i];
        local rightCat = categorySections[i + 1];

        local leftH    = categoryHeight(leftCat.items);
        local rightH   = rightCat and categoryHeight(rightCat.items) or 0;
        local rowH     = math.max(leftH, rightH) + ROW_GAP;

        local row      = Turbine.UI.Control();
        row:SetSize(CONTENT_W, rowH);

        buildCategoryBlock(row, leftCat.name, leftCat.items, 0, 0, colWidth);
        if rightCat then
            buildCategoryBlock(row, rightCat.name, rightCat.items, colWidth + COL_GAP, 0, colWidth);
        end

        self.contentList:AddItem(row);
        totalH = totalH + rowH;
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
