-- CategoryMapper - Maps ItemCategory enumeration values to logical category groups

import "Turbine.Gameplay";

CategoryMapper = {};

-- Reverse lookup: numeric ItemCategory value -> enum name string
-- Built once from Turbine.Gameplay.ItemCategory so log output shows e.g. "Potion (177)"
CategoryMapper.EnumNames = {};
for name, value in pairs(Turbine.Gameplay.ItemCategory) do
    if type(value) == "number" then
        CategoryMapper.EnumNames[value] = name;
    end
end

-- Category group definitions
CategoryMapper.Groups = {
    "Weapons",
    "Armor",
    "Jewelry",
    "Consumables",
    "Scrolls",
    "Crafting Materials",
    "Crafting Tools",
    "Quest Items",
    "Cosmetics & Mounts",
    "Miscellaneous",
    "Class Items",
    "Decorations",
    "Throphies"
};

-- Mapping table: ItemCategory enum value -> logical category group
CategoryMapper.Mappings = {
    -- WEAPONS
    [Turbine.Gameplay.ItemCategory.Sword] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Dagger] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Axe] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Hammer] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Mace] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Club] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Spear] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Halberd] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Staff] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Bow] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Crossbow] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Javelin] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Weapon] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Horn] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Instrument] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Trap] = "Weapons",
    [Turbine.Gameplay.ItemCategory.Thrown] = "Weapons",

    -- ARMOR
    [Turbine.Gameplay.ItemCategory.Armor] = "Armor",
    [Turbine.Gameplay.ItemCategory.Head] = "Armor",
    [Turbine.Gameplay.ItemCategory.Chest] = "Armor",
    [Turbine.Gameplay.ItemCategory.Legs] = "Armor",
    [Turbine.Gameplay.ItemCategory.Hands] = "Armor",
    [Turbine.Gameplay.ItemCategory.Feet] = "Armor",
    [Turbine.Gameplay.ItemCategory.Shoulders] = "Armor",
    [Turbine.Gameplay.ItemCategory.Back] = "Armor",
    [Turbine.Gameplay.ItemCategory.Shield] = "Armor",
    [Turbine.Gameplay.ItemCategory.Shieldspike] = "Armor",
    [Turbine.Gameplay.ItemCategory.Clothing] = "Armor",
    [Turbine.Gameplay.ItemCategory.Pennant] = "Armor",
    [Turbine.Gameplay.ItemCategory.Chest] = "Armor",


    -- SCROLLS
    [Turbine.Gameplay.ItemCategory.ApprenticeCookScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeFarmerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeForestryScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeJewellerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeMetalworkScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeProspectingScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeScholarScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeTailorScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeWeaponsmithScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ApprenticeWoodworkScroll] = "Scrolls",

    [Turbine.Gameplay.ItemCategory.ArtisanCookScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanFarmerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanForestryScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanJewellerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanMetalworkScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanProspectingScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanScholarScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanTailorScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanWeaponsmithScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ArtisanWoodworkScroll] = "Scrolls",

    [Turbine.Gameplay.ItemCategory.ExpertCookScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertFarmerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertForestryScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertJewellerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertMetalworkScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertProspectingScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertScholarScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertTailorScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertWeaponsmithScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.ExpertWoodworkScroll] = "Scrolls",

    [Turbine.Gameplay.ItemCategory.JourneymanCookScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanFarmerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanForestryScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanJewellerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanMetalworkScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanProspectingScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanScholarScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanTailorScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanWeaponsmithScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.JourneymanWoodworkScroll] = "Scrolls",

    [Turbine.Gameplay.ItemCategory.MasterCookScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterFarmerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterForestryScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterJewellerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterMetalworkScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterProspectingScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterScholarScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterTailorScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterWeaponsmithScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.MasterWoodworkScroll] = "Scrolls",

    [Turbine.Gameplay.ItemCategory.SupremeCookScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeFarmerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeForestryScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeJewellerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeMetalworkScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeProspectingScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeScholarScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeTailorScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeWeaponsmithScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.SupremeWoodworkScroll] = "Scrolls",

    [Turbine.Gameplay.ItemCategory.WestfoldCookScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldFarmerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldForestryScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldJewellerScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldMetalworkScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldProspectingScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldScholarScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldTailorScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldWeaponsmithScroll] = "Scrolls",
    [Turbine.Gameplay.ItemCategory.WestfoldWoodworkScroll] = "Scrolls",

    [Turbine.Gameplay.ItemCategory.Scroll] = "Scrolls",

    -- CLASSES
    [Turbine.Gameplay.ItemCategory.Burglar] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Captain] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Champion] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Guardian] = "Class Items",
    [Turbine.Gameplay.ItemCategory.GuardianBelt] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Hunter] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Loremaster] = "Class Items",
    [Turbine.Gameplay.ItemCategory.LoremasterFood] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Hunter] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Minstrel] = "Class Items",
    [Turbine.Gameplay.ItemCategory.MinstrelBook] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Runekeeper] = "Class Items",
    [Turbine.Gameplay.ItemCategory.Warden] = "Class Items",

    -- DECORATIONS
    [Turbine.Gameplay.ItemCategory.CeilingDecoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.Decoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.FloorDecoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.FurnitureDecoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.MusicDecoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.SpecialDecoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.SurfacePaintDecoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.TrophyDecoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.WallDecoration] = "Decorations",
    [Turbine.Gameplay.ItemCategory.YardDecoration] = "Decorations",

    -- JEWELRY
    [Turbine.Gameplay.ItemCategory.Jewelry] = "Jewelry",
    [Turbine.Gameplay.ItemCategory.Relic] = "Jewelry",

    -- TROPHIES
    [Turbine.Gameplay.ItemCategory.CraftingTrophy] = "Throphies",
    [Turbine.Gameplay.ItemCategory.SpecialTrophy] = "Throphies",
    [Turbine.Gameplay.ItemCategory.Trophy] = "Throphies",

    -- CONSUMABLES
    [Turbine.Gameplay.ItemCategory.Food] = "Consumables",
    [Turbine.Gameplay.ItemCategory.Fish] = "Consumables",
    [Turbine.Gameplay.ItemCategory.Potion] = "Consumables",
    [Turbine.Gameplay.ItemCategory.Healing] = "Consumables",
    [Turbine.Gameplay.ItemCategory.Oil] = "Consumables",
    [Turbine.Gameplay.ItemCategory.Effect] = "Consumables",
    [Turbine.Gameplay.ItemCategory.Tome] = "Consumables",
    [Turbine.Gameplay.ItemCategory.Implement] = "Consumables",
    [Turbine.Gameplay.ItemCategory.Perk] = "Consumables",
    [173] = "Consumables",
    [292] = "Consumables", -- potions (health/power/salves, post-U25)

    -- CRAFTING MATERIALS
    [Turbine.Gameplay.ItemCategory.Component] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.Ingredient] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.Resource] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.OptionalIngredient] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.Crafting] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.Orb] = "Crafting Materials",

    -- CRAFTING TOOLS
    [Turbine.Gameplay.ItemCategory.Tool] = "Crafting Tools",
    [Turbine.Gameplay.ItemCategory.FishingBait] = "Crafting Tools",
    [Turbine.Gameplay.ItemCategory.FishingPole] = "Crafting Tools",
    [Turbine.Gameplay.ItemCategory.FishingOther] = "Crafting Tools",

    -- QUEST ITEMS
    [Turbine.Gameplay.ItemCategory.Quest] = "Quest Items",
    [Turbine.Gameplay.ItemCategory.Book] = "Quest Items",
    [Turbine.Gameplay.ItemCategory.Key] = "Quest Items",
    [Turbine.Gameplay.ItemCategory.Map] = "Quest Items",
    [Turbine.Gameplay.ItemCategory.Deconstructable] = "Quest Items",
    [Turbine.Gameplay.ItemCategory.Device] = "Quest Items",
    [Turbine.Gameplay.ItemCategory.Skirmish] = "Quest Items",

    -- COSMETICS & MOUNTS
    [Turbine.Gameplay.ItemCategory.CosmeticHead] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.CosmeticChest] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.CosmeticLegs] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.CosmeticHands] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.CosmeticFeet] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.CosmeticShoulders] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.CosmeticBack] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.CosmeticClass] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.CosmeticHeld] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.Mounts] = "Cosmetics & Mounts",
    [Turbine.Gameplay.ItemCategory.Dye] = "Cosmetics & Mounts",

    -- CURRENCY & BARTER
    [Turbine.Gameplay.ItemCategory.Barter] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.Reputation] = "Miscellaneous",

    -- LEGENDARY WEAPON ITEMS
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponAddLegacy] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponExperience] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponIncreaseItemLevel] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponIncreaseMaxLevel] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponLegacyReveal] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponReplaceLegacy] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponReset] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponUnslotRelics] = "Crafting Materials",
    [Turbine.Gameplay.ItemCategory.LegendaryWeaponUpgradeLegacy] = "Crafting Materials",

    -- MISC
    [Turbine.Gameplay.ItemCategory.Misc] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.Undefined] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.Special] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.KinshipCharter] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.Travel] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.Festival] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.Social] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.Treasure] = "Miscellaneous",
    [Turbine.Gameplay.ItemCategory.NonInventory] = "Miscellaneous",
    [207] = "Miscellaneous" -- Mob drops / task items?
};

-- Get the logical category for an item
-- @param item: Turbine.Gameplay.Item
-- @return string: Category name
function CategoryMapper:GetCategory(item)
    if item == nil then
        return "Miscellaneous";
    end

    local itemInfo = item:GetItemInfo();
    if itemInfo == nil then
        return "Miscellaneous";
    end

    local categoryValue = itemInfo:GetCategory();
    local category = self.Mappings[categoryValue];
    local enumName = self.EnumNames[categoryValue] or "?";

    if category == nil then
        -- Warn once per unknown category value so the mapping table can be extended
        if self.unmappedCategories == nil then
            self.unmappedCategories = {};
        end
        if not self.unmappedCategories[categoryValue] then
            self.unmappedCategories[categoryValue] = true;
            BagOverlay.Warn("Unmapped category " .. enumName .. " (" .. tostring(categoryValue) .. ")" ..
                " for item: " .. itemInfo:GetName());
        end
        category = "Miscellaneous";
    end

    BagOverlay.Log("Mapped [" .. itemInfo:GetName() .. "] " ..
        enumName .. " (" .. tostring(categoryValue) .. ") -> " .. category);

    return category;
end

-- Get all category groups
function CategoryMapper:GetAllCategories()
    return self.Groups;
end
