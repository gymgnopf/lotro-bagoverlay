-- QuickslotButton - Floating quickslot to toggle the inventory overlay
-- Left-click      : open/close the bag window
-- Left-click drag : reposition the icon on screen (position saved on release)

import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "GymGnopf.BagOverlay.Settings";

QuickslotButton = {};

function QuickslotButton:Create()
    local pos = Settings:GetQuickslotPosition();

    self.window = Turbine.UI.Window();
    self.window:SetSize(40, 40);
    self.window:SetPosition(pos.x, pos.y);
    self.window:SetVisible(true);
    self.window:SetZOrder(2);

    -- Icon label using the custom plugin image
    self.icon = Turbine.UI.Label();
    self.icon:SetParent(self.window);
    self.icon:SetBackground("GymGnopf/BagOverlay/Ressource/inventory-icon.tga");
    self.icon:SetPosition(2, 2);
    self.icon:SetSize(36, 36);
    self.icon:SetVisible(true);

    -- Quickslot carrying the /bagov alias shortcut (hidden behind the icon)
    local shortcut = Turbine.UI.Lotro.Shortcut(
        Turbine.UI.Lotro.ShortcutType.Alias,
        "/bagov"
    );

    self.slot = Turbine.UI.Lotro.Quickslot();
    self.slot:SetParent(self.window);
    self.slot:SetShortcut(shortcut);
    self.slot:SetPosition(2, 2);
    self.slot:SetSize(36, 36);
    self.slot:SetVisible(false);

    -- Transparent overlay on top of the Quickslot.
    -- Quickslot intercepts right-click and drag at the engine level (below Lua).
    -- A plain Control does not, so all mouse events land here reliably.
    self.overlay = Turbine.UI.Control();
    self.overlay:SetParent(self.window);
    self.overlay:SetPosition(2, 2);
    self.overlay:SetSize(36, 36);
    self.overlay:SetVisible(true);

    local pressing         = false;
    local dragging         = false;
    local startMX, startMY = 0, 0;
    local offsetX, offsetY = 0, 0;
    local THRESHOLD        = 5;

    self.overlay.MouseDown = function(sender, args)
        pressing = true;
        dragging = false;
        startMX, startMY = Turbine.UI.Display:GetMousePosition();
        local wx, wy = self.window:GetPosition();
        offsetX = startMX - wx;
        offsetY = startMY - wy;
    end;

    self.overlay.MouseMove = function(sender, args)
        if not pressing then return; end
        local mx, my = Turbine.UI.Display:GetMousePosition();
        if not dragging then
            local dx = mx - startMX;
            local dy = my - startMY;
            if (dx * dx + dy * dy) > THRESHOLD * THRESHOLD then
                dragging = true;
            end
        end
        if dragging then
            self.window:SetPosition(mx - offsetX, my - offsetY);
        end
    end;

    self.overlay.MouseUp   = function(sender, args)
        if not pressing then return; end
        pressing = false;
        if dragging then
            dragging = false;
            local x, y = self.window:GetPosition();
            Settings:SetQuickslotPosition(x, y);
            Settings:Save();
        else
            BagOverlay:ToggleBagWindow();
        end
    end;
end
