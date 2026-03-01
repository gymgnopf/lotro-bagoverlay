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

local CONTENT_W     = WIN_WIDTH - MARGIN * 2 - SCROLLBAR_W - 4;
local AREA_H        = WIN_HEIGHT - TOP_MARGIN - MARGIN;

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
    InstanceWindow = Turbine.UI.Lotro.GoldWindow();
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

    self:BuildContent();

    InventoryManager:SetCategoryUpdatedCallback(function()
        BagWindow:BuildContent();
    end);
    InventoryManager:SetInventoryRefreshedCallback(function()
        BagWindow:BuildContent();
    end);
end

function BagWindow:BuildContent()
    self.contentList:ClearItems();
    self.contentList:SetTop(TOP_MARGIN);

    local categories = InventoryManager:GetAllCategories();
    local colWidth   = math.floor((CONTENT_W - COL_GAP) / 2);

    local nonEmpty   = {};
    for i = 1, #categories do
        local items = InventoryManager:GetItemsInCategory(categories[i]);
        if #items > 0 then
            table.insert(nonEmpty, { name = categories[i], items = items });
        end
    end

    local totalH = 0;
    for i = 1, #nonEmpty, 2 do
        local leftCat  = nonEmpty[i];
        local rightCat = nonEmpty[i + 1];

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
end
