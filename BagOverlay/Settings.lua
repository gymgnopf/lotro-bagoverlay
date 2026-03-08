-- Settings - Plugin settings persistence using Turbine.PluginData

import "Turbine";

Settings = {};

-- Default settings
Settings.data = {
    window = {
        x = 100,
        y = 100,
        width = 520,
        height = 600
    },
    quickslot = {
        x = 200,
        y = 400
    },
    categories = {
        -- Format: [categoryName] = { collapsed = true/false }
    }
};

-- Load settings from PluginData
function Settings:Load()
    local pluginData = Turbine.PluginData.Load(Turbine.DataScope.Character, "BagOverlay");

    if pluginData then
        -- Load window settings
        if pluginData.window then
            if pluginData.window.x then self.data.window.x = pluginData.window.x; end
            if pluginData.window.y then self.data.window.y = pluginData.window.y; end
            if pluginData.window.width then self.data.window.width = pluginData.window.width; end
            if pluginData.window.height then self.data.window.height = pluginData.window.height; end
        end

        -- Load quickslot position
        if pluginData.quickslot then
            if pluginData.quickslot.x then self.data.quickslot.x = pluginData.quickslot.x; end
            if pluginData.quickslot.y then self.data.quickslot.y = pluginData.quickslot.y; end
        end

        -- Load category settings
        if pluginData.categories then
            self.data.categories = pluginData.categories;
        end

        BagOverlay.Log("BagOverlay: Settings loaded.");
    else
        BagOverlay.Log("BagOverlay: No saved settings found, using defaults.");
    end
end

-- Save settings to PluginData
function Settings:Save()
    Turbine.PluginData.Save(Turbine.DataScope.Character, "BagOverlay", self.data);
    BagOverlay.Log("BagOverlay: Settings saved.");
end

-- Get window settings
function Settings:GetWindowSettings()
    return self.data.window;
end

-- Set window position
function Settings:SetWindowPosition(x, y)
    self.data.window.x = x;
    self.data.window.y = y;
end

-- Set window size
function Settings:SetWindowSize(width, height)
    self.data.window.width = width;
    self.data.window.height = height;
end

-- Get quickslot position
function Settings:GetQuickslotPosition()
    return self.data.quickslot;
end

-- Set quickslot position
function Settings:SetQuickslotPosition(x, y)
    self.data.quickslot.x = x;
    self.data.quickslot.y = y;
end

-- Get category collapsed state
function Settings:GetCategoryCollapsed(categoryName)
    if self.data.categories[categoryName] then
        return self.data.categories[categoryName].collapsed or false;
    end
    return false;
end

-- Set category collapsed state
function Settings:SetCategoryCollapsed(categoryName, collapsed)
    if not self.data.categories[categoryName] then
        self.data.categories[categoryName] = {};
    end
    self.data.categories[categoryName].collapsed = collapsed;
end

