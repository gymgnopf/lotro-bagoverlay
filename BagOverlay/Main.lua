-- BagOverlay Plugin - Main Entry Point
-- Author: gymgnopf / https://github.com/gymgnopf/lotro-bagoverview
-- Displays inventory items grouped by category in a dynamic grid layout

import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI";
import "Turbine.UI.Lotro";

-- Import plugin modules
import "GymGnopf.BagOverlay.Settings";
import "GymGnopf.BagOverlay.Item";
import "GymGnopf.BagOverlay.CategoryMapper";
import "GymGnopf.BagOverlay.InventoryManager";
import "GymGnopf.BagOverlay.BagWindow";
import "GymGnopf.BagOverlay.QuickslotButton";

-- Global plugin reference
BagOverlay = {};

-- Set to true to enable verbose debug logging in chat
BagOverlay.DEBUG = false;
BagOverlay.VERSION = "1.0";

-- Plugin window instance
local bagWindow = nil;

-- Color escape sequences for Turbine.Shell.WriteLine
-- Format: \aFRRGGBB sets foreground color, \aFFFFFFF resets to white
local C = {
    log  = "<rgb=#F88AAFF>", -- steel blue  — debug prefix
    warn = "<rgb=#FFFAA00>", -- orange      — warning prefix
};

-- Log a message only when debug mode is enabled
function BagOverlay.Log(msg)
    if BagOverlay.DEBUG then
        Turbine.Shell.WriteLine(C.log .. "[BagOverlay]" .. tostring(msg) .. "</rgb>");
    end
end

-- Always-visible warning (unmapped categories, unexpected states, etc.)
function BagOverlay.Warn(msg)
    if BagOverlay.DEBUG then
        Turbine.Shell.WriteLine(C.warn .. "[BagOverlay] WARN:" .. tostring(msg) .. "</rgb>");
    end
end

-- Initialize the plugin
function BagOverlay:Initialize()
    Turbine.Shell.WriteLine("[BagOverlay] Loading...");

    -- Load settings
    Settings:Load();

    -- Initialize inventory manager
    InventoryManager:Initialize();

    -- Register shell command
    self:RegisterCommand();

    -- Create the floating quickslot button
    QuickslotButton:Create();

    Turbine.Shell.WriteLine("[BagOverlay] Version " ..
        BagOverlay.VERSION .. " Loaded. Click the quickslot button or type /bagov to toggle."
    );
end

-- Register the /bags shell command
function BagOverlay:RegisterCommand()
    bagsCommand = Turbine.ShellCommand();

    bagsCommand.Execute = function(command, args)
        BagOverlay:ToggleBagWindow();
    end;
    Turbine.Shell.AddCommand("bagov", bagsCommand);
end

-- Toggle the bag window visibility
function BagOverlay:ToggleBagWindow()
    if InstanceWindow == nil then
        BagWindow:CreateInstanceWindow();
        BagWindow:Init();
    end
    InstanceWindow:SetVisible(not InstanceWindow:IsVisible());
end

-- Cleanup on plugin unload
function BagOverlay:Unload()
    InventoryManager:Cleanup();
    Settings:Save();
end

-- Initialize plugin on load
BagOverlay:Initialize();
