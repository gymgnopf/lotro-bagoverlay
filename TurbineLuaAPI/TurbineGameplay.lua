-- Turbine API -- Gameplay namespace (Turbine.Gameplay.*)
-- Auto-generated from Standing Stone Games Turbine API documentation.
-- Use with lua-language-server for Zed editor autocomplete.

-- Namespace declaration (makes this namespace visible in autocomplete)
Turbine.Gameplay = {}

---The alignment of a player.
---@class Turbine.Gameplay.Alignment
---@field FreePeople number A player aligned with the Free People.
---@field MonsterPlayer number A monster player.
---@field Undefined number An undefined alignment.
Turbine.Gameplay.Alignment = {}

---The Burglar stances.
---@class Turbine.Gameplay.Attributes.BurglarStance
---@field None number No stance.
Turbine.Gameplay.Attributes.BurglarStance = {}

---The Champion stances.
---@class Turbine.Gameplay.Attributes.ChampionStance
---@field None number No stance.
Turbine.Gameplay.Attributes.ChampionStance = {}

---The Guardian stances.
---@class Turbine.Gameplay.Attributes.GuardianStance
---@field None number No stance.
Turbine.Gameplay.Attributes.GuardianStance = {}

---The Hunter stances.
---@class Turbine.Gameplay.Attributes.HunterStance
---@field Endurance number Endurance stance.
---@field None number No stance.
---@field Precision number Precision stance.
---@field Strength number Strength stance.
Turbine.Gameplay.Attributes.HunterStance = {}

---The Minstrel stances.
---@class Turbine.Gameplay.Attributes.MinstrelStance
---@field Harmony number Harmony stance.
---@field None number No stance.
---@field WarSpeech number WarSpeech stance.
Turbine.Gameplay.Attributes.MinstrelStance = {}

---The Warden gambits.
---@class Turbine.Gameplay.Attributes.WardenGambit
---@field Fist number Fist gambit.
---@field Javelin number Javelin gambit.
---@field Shield number Shield gambit.
---@field Spear number Spear gambit.
Turbine.Gameplay.Attributes.WardenGambit = {}

---The Warden stances.
---@class Turbine.Gameplay.Attributes.WardenStance
---@field Assailment number Assailment stance.
---@field Determination number Determination stance.
---@field None number No stance.
Turbine.Gameplay.Attributes.WardenStance = {}

---The Class of a player.
---@class Turbine.Gameplay.Class
---@field Beorning number Beorning class.
---@field BlackArrow number Black Arrow class.
---@field Burglar number Burglar class.
---@field Captain number Captain class.
---@field Champion number Champion class.
---@field Chicken number Chicken class.
---@field Defiler number Defiler class.
---@field Guardian number Guardian class.
---@field Hunter number Hunter class.
---@field LoreMaster number Lore Master class.
---@field Minstrel number Minstrel class.
---@field Ranger number Ranger class.
---@field Reaver number Reaver class.
---@field RuneKeeper number Rune-Keeper class.
---@field Stalker number Stalker class.
---@field Troll number Troll class.
---@field Undefined number An undefined Class.
---@field Warden number Warden class.
---@field WarLeader number WarLeader class.
---@field Weaver number Weaver class.
Turbine.Gameplay.Class = {}

---A crafting tier.
---@class Turbine.Gameplay.CraftTier
---@field Apprentice number Apprentice level.
---@field Artisan number Artisan level.
---@field Eastemnet number Eastemnet level.
---@field Expert number Expert level.
---@field Journeyman number Journeyman level.
---@field Master number Master level.
---@field Supreme number Supreme level.
---@field Undefined number An undefined profession.
---@field Westemnet number Westemnet level.
---@field Westfold number Westfold level.
Turbine.Gameplay.CraftTier = {}

---Describes the category of an effect.
---@class Turbine.Gameplay.EffectCategory
---@field Corruption number A corruption effect.
---@field Cry number A cry effect.
---@field Disease number A disease effect.
---@field Dispellable number A dispellable effect.
---@field Elemental number An elemental effect.
---@field Fear number A fear effect.
---@field Physical number A physical effect.
---@field Poison number A poison effect.
---@field Song number A song effect.
---@field Undefined number An undefined category.
---@field Wound number A wound effect.
Turbine.Gameplay.EffectCategory = {}

---The equipment slot in the player's equipment.
---@class Turbine.Gameplay.EquipmentSlot
---@field Back number The back equipment slot.
---@field Boots number The boots equipment slot.
---@field Bracelet1 number The bracelet 1 equipment slot.
---@field Bracelet2 number The bacelet 2 equipment slot.
---@field Chest number The chest equipment slot.
---@field Class number The class equipment slot.
---@field CraftTool number The craft tool equipment slot.
---@field Earring1 number The earring 1 equipment slot.
---@field Earring2 number The earring 2 equipment slot.
---@field Gloves number The gloves equipment slot.
---@field Head number The head equipment slot.
---@field Instrument number The instrument equipment slot.
---@field Legs number The legs equipment slot.
---@field Necklace number The necklace equipment slot.
---@field Pocket number The pocket equipment slot.
---@field PrimaryWeapon number The primary weapon equipment slot.
---@field RangedWeapon number The ranged weapon equipment slot.
---@field Ring1 number The ring 1 equipment slot.
---@field Ring2 number The ring 2 equipment slot.
---@field SecondaryWeapon number The secondary weapon equipment slot.
---@field Shield number The shield equipment slot.
---@field Shoulder number The shoulder equipment slot.
---@field Undefined number An undefined equipment slot.
Turbine.Gameplay.EquipmentSlot = {}

---Describes the category of an item.
---@class Turbine.Gameplay.ItemCategory
---@field ApprenticeCookScroll number Category for an apprentice cook scroll.
---@field ApprenticeFarmerScroll number Category for an apprentice farmer scroll.
---@field ApprenticeForestryScroll number Category for an apprentice forestry scroll.
---@field ApprenticeJewellerScroll number Category for an apprentice jeweller scroll.
---@field ApprenticeMetalworkScroll number Category for an apprentice metalwork scroll.
---@field ApprenticeProspectingScroll number Category for an apprentice prospecting scroll.
---@field ApprenticeScholarScroll number Category for an apprentice scholar scroll.
---@field ApprenticeTailorScroll number Category for an apprentice tailor scroll.
---@field ApprenticeWeaponsmithScroll number Category for an apprentice weaponsmith scroll.
---@field ApprenticeWoodworkScroll number Category for an apprentice woodwork scroll.
---@field Armor number Category for an armor item.
---@field ArtisanCookScroll number Category for an artisan cook scroll.
---@field ArtisanFarmerScroll number Category for an artisan farmer scroll.
---@field ArtisanForestryScroll number Category for an artisan forestry scroll.
---@field ArtisanJewellerScroll number Category for an artisan jeweller scroll.
---@field ArtisanMetalworkScroll number Category for an artisan metalwork scroll.
---@field ArtisanProspectingScroll number Category for an artisan prospecting scroll.
---@field ArtisanScholarScroll number Category for an artisan scholar scroll.
---@field ArtisanTailorScroll number Category for an artisan tailor scroll.
---@field ArtisanWeaponsmithScroll number Category for an artisan weaponsmith scroll.
---@field ArtisanWoodworkScroll number Category for an artisan woodwork scroll.
---@field Axe number Category for an axe.
---@field Back number Category for equipment for the back.
---@field Barter number Category for a barter item.
---@field Book number Category for a book.
---@field Bow number Category for a bow.
---@field Burglar number Category for a burglar item.
---@field Captain number Category for a captain item.
---@field CeilingDecoration number Category for ceiling decorations.
---@field Champion number Category for a champion item.
---@field Chest number Category for a chest.
---@field Clothing number Category for clothing.
---@field Club number Category for a club.
---@field Component number Category for a recipe component.
---@field CosmeticBack number Category for cosmetic equipment for the back.
---@field CosmeticChest number Category for cosmetic equipment for the chest.
---@field CosmeticClass number Category for cosmetic equipment for a class.
---@field CosmeticFeet number Category for cosmetic equipment for the feet.
---@field CosmeticHands number Category for cosmetic equipment for the hands.
---@field CosmeticHead number Category for cosmetic equipment for the head.
---@field CosmeticHeld number Category for cosmetic held items.
---@field CosmeticLegs number Category for cosmetic equipment for the legs.
---@field CosmeticShoulders number Category for cosmetic equipment for the shoulders.
---@field Crafting number Category for a crafting item.
---@field CraftingTrophy number Category for a crafting trophy.
---@field Crossbow number Category for a crossbow.
---@field Dagger number Category for a dagger.
---@field Deconstructable number Category for a deconstructable item.
---@field Decoration number Category for a decoration.
---@field Device number Category for a device.
---@field Dye number Category for a dye.
---@field Effect number Category for an effect.
---@field ExpertCookScroll number Category for an expert cook scroll.
---@field ExpertFarmerScroll number Category for an expert farmer scroll.
---@field ExpertForestryScroll number Category for an expert forestry scroll.
---@field ExpertJewellerScroll number Category for an expert jeweller scroll.
---@field ExpertMetalworkScroll number Category for an expert metalwork scroll.
---@field ExpertProspectingScroll number Category for an expert prospecting scroll.
---@field ExpertScholarScroll number Category for an expert scholar scroll.
---@field ExpertTailorScroll number Category for an expert tailor scroll.
---@field ExpertWeaponsmithScroll number Category for an expert weaponsmith scroll.
---@field ExpertWoodworkScroll number Category for an expert woodwork scroll.
---@field Feet number Category for foot equipment.
---@field Festival number Category for a festival item.
---@field Fish number Category for a fish.
---@field FishingBait number Category for fishing bait.
---@field FishingOther number Category for other fishing items.
---@field FishingPole number Category for a fishing pole.
---@field FloorDecoration number Category for floor decorations.
---@field Food number Category for food.
---@field FurnitureDecoration number Category for furniture decorations.
---@field Guardian number Category for a guardian item.
---@field GuardianBelt number Category for a guardian belt.
---@field Halberd number Category for a halberd.
---@field Hammer number Category for a hammer.
---@field Hands number Category for equipment for the hands.
---@field Head number Category for equipment for the head.
---@field Healing number Category for a healing item.
---@field Horn number Category for a horn.
---@field Hunter number Category for a hunter item.
---@field Implement number Category for an implement.
---@field Ingredient number Category for an ingredient.
---@field Instrument number Category for an instrument.
---@field Javelin number Category for a javelin.
---@field Jewelry number Category for a Jewelry item.
---@field JourneymanCookScroll number Category for a journeyman cook scroll.
---@field JourneymanFarmerScroll number Category for a journeyman farmer scroll.
---@field JourneymanForestryScroll number Category for a journeyman forestry scroll.
---@field JourneymanJewellerScroll number Category for a journeyman jeweller scroll.
---@field JourneymanMetalworkScroll number Category for a journeyman metalwork scroll.
---@field JourneymanProspectingScroll number Category for a journeyman prospecting scroll.
---@field JourneymanScholarScroll number Category for a journeyman scholar scroll.
---@field JourneymanTailorScroll number Category for a journeyman tailor scroll.
---@field JourneymanWeaponsmithScroll number Category for a journeyman weaponsmith scroll.
---@field JourneymanWoodworkScroll number Category for a journeyman woodwork scroll.
---@field Key number Category for a key.
---@field KinshipCharter number Category for a kinship charter.
---@field LegendaryWeaponAddLegacy number Category for a legendary weapon add legacy item.
---@field LegendaryWeaponExperience number Category for a legendary weapon experience item.
---@field LegendaryWeaponIncreaseItemLevel number Category for a legendary weapon increase item level item.
---@field LegendaryWeaponIncreaseMaxLevel number Category for a legendary weapon increase max level item.
---@field LegendaryWeaponLegacyReveal number Category for a legendary weapon legacy reveal item.
---@field LegendaryWeaponReplaceLegacy number Category for a legendary weapon replace legacy item.
---@field LegendaryWeaponReset number Category for a legendary weapon reset item.
---@field LegendaryWeaponUnslotRelics number Category for a legendary weapon unslot relics item.
---@field LegendaryWeaponUpgradeLegacy number Category for a legendary weapon upgrade legacy item.
---@field Legs number Category for equipment for the legs.
---@field Loremaster number Category for a loremaster item.
---@field LoremasterFood number Category for loremaster food items.
---@field Mace number Category for a mace.
---@field Map number Category for a map.
---@field MasterCookScroll number Category for a master cook scroll.
---@field MasterFarmerScroll number Category for a master farmer scroll.
---@field MasterForestryScroll number Category for a master forestry scroll.
---@field MasterJewellerScroll number Category for a master jeweller scroll.
---@field MasterMetalworkScroll number Category for a master metalwork scroll.
---@field MasterProspectingScroll number Category for a master prospecting scroll.
---@field MasterScholarScroll number Category for a master scholar scroll.
---@field MasterTailorScroll number Category for a master tailor scroll.
---@field MasterWeaponsmithScroll number Category for a master weaponsmith scroll.
---@field MasterWoodworkScroll number Category for a master woodwork scroll.
---@field Minstrel number Category for a minstrel item.
---@field MinstrelBook number Category for a minstrel book.
---@field Misc number Category for a misc item.
---@field Mounts number Category for mounts.
---@field MusicDecoration number Category for a music decoration item.
---@field NonInventory number Category for a non-inventory item.
---@field Oil number Category for an oil.
---@field OptionalIngredient number Category for an optional ingredient.
---@field Orb number Category for an orb.
---@field Pennant number Category for a pennant.
---@field Perk number Category for a perk.
---@field Potion number Category for a potion.
---@field Quest number Category for a quest item.
---@field Relic number Category for a relic.
---@field Reputation number Category for a reputation item.
---@field Resource number Category for a resource.
---@field Runekeeper number Category for a runekeeper item.
---@field Scroll number Category for a scroll.
---@field Shield number Category for a shield.
---@field Shieldspike number Category for a shieldspike.
---@field Shoulders number Category for shoulder equipment.
---@field Skirmish number Category for a skirmish item.
---@field Social number Category for a social item.
---@field Spear number Category for a spear.
---@field Special number Category for special item.
---@field SpecialDecoration number Category for special decorations.
---@field SpecialTrophy number Category for a special trophy.
---@field Staff number Category for a staff.
---@field SupremeCookScroll number Category for a supreme cook scroll.
---@field SupremeFarmerScroll number Category for a supreme farmer scroll.
---@field SupremeForestryScroll number Category for a supreme forestry scroll.
---@field SupremeJewellerScroll number Category for a supreme jeweller scroll.
---@field SupremeMetalworkScroll number Category for a supreme metalwork scroll.
---@field SupremeProspectingScroll number Category for a supreme prospecting scroll.
---@field SupremeScholarScroll number Category for a supreme scholar scroll.
---@field SupremeTailorScroll number Category for a supreme tailor scroll.
---@field SupremeWeaponsmithScroll number Category for a supreme weaponsmith scroll.
---@field SupremeWoodworkScroll number Category for a supreme woodwork scroll.
---@field SurfacePaintDecoration number Category for a surface paint decoration.
---@field Sword number Category for a sword.
---@field Thrown number Category for a thrown item.
---@field Tome number Category for a tome.
---@field Tool number Category for a tool.
---@field Trap number Category for a trap.
---@field Travel number Category for a travel.
---@field Treasure number Category for a treasure.
---@field Trophy number Category for a trophy.
---@field TrophyDecoration number Category for a trophy decoration.
---@field Undefined number An undefined category.
---@field WallDecoration number Category for a wall decoration.
---@field Warden number Category for a warden item.
---@field Weapon number Category for a weapon.
---@field WestfoldCookScroll number Category for a Westfold cook scroll.
---@field WestfoldFarmerScroll number Category for a Westfold farmer scroll.
---@field WestfoldForestryScroll number Category for a Westfold forestry scroll.
---@field WestfoldJewellerScroll number Category for a Westfold jeweller scroll.
---@field WestfoldMetalworkScroll number Category for a Westfold metalwork scroll.
---@field WestfoldProspectingScroll number Category for a Westfold prospecting scroll.
---@field WestfoldScholarScroll number Category for a Westfold scholar scroll.
---@field WestfoldTailorScroll number Category for a Westfold tailor scroll.
---@field WestfoldWeaponsmithScroll number Category for a Westfold weaponsmith scroll.
---@field WestfoldWoodworkScroll number Category for a Westfold woodwork scroll.
---@field YardDecoration number Category for a yard decoration.
Turbine.Gameplay.ItemCategory = {}

---Describes the durability of an item.
---@class Turbine.Gameplay.ItemDurability
---@field Brittle number An item that is of brittle durability.
---@field Flimsy number An item that is flimsy durability.
---@field Indestructible number An item that is indestructible.
---@field Normal number An item that is of average durability.
---@field Substantial number An item that is of substantial durability.
---@field Tough number An item that is of tough durability.
---@field Undefined number An undefined durability.
---@field Weak number An item that is durability.
Turbine.Gameplay.ItemDurability = {}

---Describes the quality of an item.
---@class Turbine.Gameplay.ItemQuality
---@field Common number An item that is common.
---@field Incomparable number An item that is incomparable.
---@field Legendary number An item that is legendary.
---@field Rare number An item that is rare.
---@field Uncommon number An item that is uncommon.
---@field Undefined number An item with no defined quality.
Turbine.Gameplay.ItemQuality = {}

---Describes the current wear state of an item.
---@class Turbine.Gameplay.ItemWearState
---@field Broken number A broken wear state.
---@field Damaged number A damaged wear state.
---@field Pristine number A pristine wear state.
---@field Undefined number An unknown wear state.
---@field Worn number A worn wear state.
Turbine.Gameplay.ItemWearState = {}

---A profession a free people player can have.
---@class Turbine.Gameplay.Profession
---@field Cook number A cook.
---@field Farmer number A farmer.
---@field Forester number A forester.
---@field Jeweller number A jeweller.
---@field Metalsmith number A metalsmith.
---@field Prospector number A propspector.
---@field Scholar number A scholar.
---@field Tailor number A tailor.
---@field Undefined number An undefined profession.
---@field Weaponsmith number A weaponsmith.
---@field Woodworker number A woodworker.
Turbine.Gameplay.Profession = {}

---The Race of a player.
---@class Turbine.Gameplay.Race
---@field Beorning number Beorning race.
---@field Dwarf number Dwarf race.
---@field Elf number Elf race.
---@field HighElf number High Elf race.
---@field Hobbit number Hobbit race.
---@field Man number Man race.
---@field StoutAxe number Dwarf Stout-axe race.
---@field Undefined number An undefined Race.
Turbine.Gameplay.Race = {}

---The ready state of a player.
---@class Turbine.Gameplay.ReadyState
---@field NotReady number Not ready state.
---@field Ready number Ready state.
---@field Unset number An unset set.
Turbine.Gameplay.ReadyState = {}

---A type of skill.
---@class Turbine.Gameplay.SkillType
---@field Gambit number A gambit skill.
---@field Mount number A mount skill.
---@field Normal number A standard skill.
Turbine.Gameplay.SkillType = {}

---The vocation of a free people player.
---@class Turbine.Gameplay.Vocation
---@field Armorer number An armorer.
---@field Armsman number An armsman.
---@field Explorer number An explorer.
---@field Historian number A historian.
---@field None number No vocation.
---@field Tinker number A tinker.
---@field Woodsman number A woodsman.
---@field Yeoman number A yeoman.
Turbine.Gameplay.Vocation = {}

---Information about an active player's skill.
---@class Turbine.Gameplay.ActiveSkill : Turbine.Gameplay.Skill
---@field ResetTimeChanged fun(sender: table, args: table) Event fired when the reset time of a skill changes.
Turbine.Gameplay.ActiveSkill = {}

---Gets the base cooldown of the skill.
---@return number # The base cooldown of the skill in seconds.
function Turbine.Gameplay.ActiveSkill:GetBaseCooldown() end

---Gets the cooldown of the skill.
---@return number # The cooldown of the skill in seconds.
function Turbine.Gameplay.ActiveSkill:GetCooldown() end

---Gets the time that the skill will come off of cooldown.
---@return number # The base cooldown of the skill in seconds.
function Turbine.Gameplay.ActiveSkill:GetResetTime() end

---Gets if the skill is currently usable.
---@return boolean
function Turbine.Gameplay.ActiveSkill:IsUsable() end

---Base class for any entity that interacts in the world.
---@class Turbine.Gameplay.Actor : Turbine.Gameplay.Entity
---@field BaseMaxMoraleChanged fun(sender: table, args: table) Event fired when the actor's base max morale changes.
---@field BaseMaxPowerChanged fun(sender: table, args: table) Event fired when he actor's base max power changes.
---@field LevelChanged fun(sender: table, args: table) Event fired when the actor's level changes.
---@field MaxMoraleChanged fun(sender: table, args: table) Event fired when the actor's max morale changes.
---@field MaxPowerChanged fun(sender: table, args: table) Event fired when he actor's max power changes.
---@field MaxTemporaryMoraleChanged fun(sender: table, args: table) Event fired when the actor's max temporary morale changes.
---@field MaxTemporaryPowerChanged fun(sender: table, args: table) Event fired when he actor's max temporary power changes.
---@field MoraleChanged fun(sender: table, args: table) Event fired when the actor's morale changes.
---@field PowerChanged fun(sender: table, args: table) Event fired when he actor's power changes.
---@field TargetChanged fun(sender: table, args: table) Event fired when the actor's target changes.
---@field TemporaryMoraleChanged fun(sender: table, args: table) Event fired when the actor's temporary morale changes.
---@field TemporaryPowerChanged fun(sender: table, args: table) Event fired when he actor's temporary power changes.
Turbine.Gameplay.Actor = {}

---Gets the base max morale of the actor.
---@return number # The base max morale of the actor.
function Turbine.Gameplay.Actor:GetBaseMaxMorale() end

---Gets the base max power of the actor.
---@return number # The base max power of the actor.
function Turbine.Gameplay.Actor:GetBaseMaxPower() end

---Gets the effects on the actor.
---@return Turbine.Gameplay.EffectList # The list of effects.
function Turbine.Gameplay.Actor:GetEffects() end

---Gets the level of the actor.
---@return number # The level of the actor.
function Turbine.Gameplay.Actor:GetLevel() end

---Gets the max morale of the actor.
---@return number # The max morale of the actor.
function Turbine.Gameplay.Actor:GetMaxMorale() end

---Gets the max power of the actor.
---@return number # The max power of the actor.
function Turbine.Gameplay.Actor:GetMaxPower() end

---Gets the maximum temporary morale of the actor.
---@return number # The maximum temporary morale of the actor.
function Turbine.Gameplay.Actor:GetMaxTemporaryMorale() end

---Gets the max temporary power of the actor.
---@return number # The max temporary power of the actor.
function Turbine.Gameplay.Actor:GetMaxTemporaryPower() end

---Gets the current morale of the actor.
---@return number # The current morale of the actor.
function Turbine.Gameplay.Actor:GetMorale() end

---Gets the current power of the actor.
---@return number # The current power of the actor.
function Turbine.Gameplay.Actor:GetPower() end

---Gets the actor's target.
---@return Turbine.Gameplay.Entity # The target.
function Turbine.Gameplay.Actor:GetTarget() end

---Gets the temporary morale of the actor.
---@return number # The temporary morale of the actor.
function Turbine.Gameplay.Actor:GetTemporaryMorale() end

---Gets the temporary power of the actor.
---@return number # The temporary power of the actor.
function Turbine.Gameplay.Actor:GetTemporaryPower() end

---Represents a collection of information about an entity.
---@class Turbine.Gameplay.Attributes : Turbine.Gameplay.PropertyHandler
Turbine.Gameplay.Attributes = {}

---Provides class information for the Beorning player class.
---@class Turbine.Gameplay.Attributes.BeorningAttributes : Turbine.Gameplay.ClassAttributes
---@field FormChanged fun(sender: table, args: table) Event fired when the form state of the Beorning changes.
---@field WrathChanged fun(sender: table, args: table) Event fired when the wrath level of a Beorning has changed.
Turbine.Gameplay.Attributes.BeorningAttributes = {}

---Gets the current wrath amount of a Beorning.
---@return number # The current wrath amount of a Beorning.
function Turbine.Gameplay.Attributes.BeorningAttributes:GetWrath() end

---Returns true if the Beorning is in bear form.
---@return boolean # True if the Beorning is in bear form.
function Turbine.Gameplay.Attributes.BeorningAttributes:IsInBearForm() end

---Provides class information for the Black Arrow monster class.
---@class Turbine.Gameplay.Attributes.BlackArrowAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.BlackArrowAttributes = {}

---Provides class information for the Burglar player class.
---@class Turbine.Gameplay.Attributes.BurglarAttributes : Turbine.Gameplay.ClassAttributes
---@field IsCriticalTier1Changed fun(sender: table, args: table) Event fired when the critical tier 1 availability has changed.
---@field IsCriticalTier2Changed fun(sender: table, args: table) Event fired when the critical tier 2 availability has changed.
---@field StanceChanged fun(sender: table, args: table) Event fired when the stance changes.
Turbine.Gameplay.Attributes.BurglarAttributes = {}

---Gets the current stance.
---@return number # The current stance.
function Turbine.Gameplay.Attributes.BurglarAttributes:GetStance() end

---Returns true if the first tier critical skills are usable.
---@return boolean # True if the first tier critical skills are usable.
function Turbine.Gameplay.Attributes.BurglarAttributes:IsCriticalTier1Available() end

---Returns true if the second tier critical skills are usable.
---@return boolean # True if the second tier critical skills are usable.
function Turbine.Gameplay.Attributes.BurglarAttributes:IsCriticalTier2Available() end

---Provides class information for the Captain player class.
---@class Turbine.Gameplay.Attributes.CaptainAttributes : Turbine.Gameplay.ClassAttributes
---@field IsInEnemyDefeatResponseChanged fun(sender: table, args: table) Event fired when the enemy defeat response changes.
---@field IsInFellowDefeatResponseChanged fun(sender: table, args: table) Event fired when the fellow defeat response changes.
---@field IsReadiedTier1Changed fun(sender: table, args: table) Event fired when the readied tier 1 availability has changed.
---@field IsReadiedTier2Changed fun(sender: table, args: table) Event fired when the readied tier 2 availability has changed.
Turbine.Gameplay.Attributes.CaptainAttributes = {}

---Returns true if the champion is ready to respond to defeating an enemy.
---@return boolean # True if the champion is ready to respond to defeating an enemy.
function Turbine.Gameplay.Attributes.CaptainAttributes:IsInEnemyDefeatResponse() end

---Returns true if the champion is ready to respond to a fellow being defeated.
---@return boolean # True if the champion is ready to respond to a fellow being defeated.
function Turbine.Gameplay.Attributes.CaptainAttributes:IsInFellowDefeatResponse() end

---Returns true if the first tier readied skills are usable.
---@return boolean # True if the first tier readied skills are usable.
function Turbine.Gameplay.Attributes.CaptainAttributes:IsReadiedTier1Available() end

---Returns true if the second tier readied skills are usable.
---@return boolean # True if the second tier readied skills are usable.
function Turbine.Gameplay.Attributes.CaptainAttributes:IsReadiedTier2Available() end

---Provides class information for the Champion player class.
---@class Turbine.Gameplay.Attributes.ChampionAttributes : Turbine.Gameplay.ClassAttributes
---@field FervorChanged fun(sender: table, args: table) Event fired when the fervor of a champion has changed.
---@field StanceChanged fun(sender: table, args: table) Event fired when the stance changes.
Turbine.Gameplay.Attributes.ChampionAttributes = {}

---Gets the current fervor of a champion.
---@return number # The current fervor of a champion.
function Turbine.Gameplay.Attributes.ChampionAttributes:GetFervor() end

---Gets the current stance.
---@return number # The current stance.
function Turbine.Gameplay.Attributes.ChampionAttributes:GetStance() end

---Provides class information for the Black Arrow monster class.
---@class Turbine.Gameplay.Attributes.ChickenAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.ChickenAttributes = {}

---Provides class information for the Defiler monster class.
---@class Turbine.Gameplay.Attributes.DefilerAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.DefilerAttributes = {}

---Provides class information for the Dwarf race.
---@class Turbine.Gameplay.Attributes.DwarfAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.Attributes.DwarfAttributes = {}

---Provides class information for the Elf race.
---@class Turbine.Gameplay.Attributes.ElfAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.Attributes.ElfAttributes = {}

---Provides class information for the Free People entities.
---@class Turbine.Gameplay.Attributes.FreePeopleAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.Attributes.FreePeopleAttributes = {}

---Gets the modified agility of the player.
---@return number # The modified agility of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetAgility() end

---Gets the armor value of the player.
---@return number # The armor value of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetArmor() end

---Gets the unmodified agility of the player.
---@return number # The unmodified agility of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetBaseAgility() end

---Gets the base armor value of the player.
---@return number # The base armor value of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetBaseArmor() end

---Gets the unmodified fate of the player.
---@return number # The unmodified fate of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetBaseFate() end

---Gets the unmodified might of the player.
---@return number # The unmodified might of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetBaseMight() end

---Gets the base resistance of the player.
---@return number # The base resistance of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetBaseResistance() end

---Gets the unmodified vitality of the player.
---@return number # The unmodified vitality of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetBaseVitality() end

---Gets the unmodified will of the player.
---@return number # The unmodified will of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetBaseWill() end

---Gets the destiny points of the player.
---@return number # . The destiny points of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetDestinyPoints() end

---Gets the disease resistance of the player.
---@return number # The disease resistance of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetDiseaseResistance() end

---Gets the modified fate of the player.
---@return number # The modified fate of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetFate() end

---Gets the fear resistance of the player.
---@return number # The fear resistance of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetFearResistance() end

---Gets the modified might of the player.
---@return number # The modified might of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetMight() end

---Gets the money of the player in copper.
---@return number # . The money of the player in copper.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetMoney() end

---Gets the money of the player in gold, silver, and copper.
---@return . The money of the player returned as three values that are the gold, silver, and copper.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetMoneyComponents() end

---Gets the poison resistance of the player.
---@return number # The poison resistance of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetPoisonResistance() end

---Gets information about a player's profession.
---@param profession number
---@return Turbine.Gameplay.ProfessionInfo # The profession information for the specified profession if that player has that profession. If the player does not have that profession, nil will be returned.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetProfessionInfo(profession) end

---Gets the modified vitality of the player.
---@return number # The modified vitality of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetVitality() end

---Gets the current vocation of the player.
---@return number # The current vocation of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetVocation() end

---Gets the modified will of the player.
---@return number # The modified will of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetWill() end

---Gets the wound resistance of the player.
---@return number # The wound resistance of the player.
function Turbine.Gameplay.Attributes.FreePeopleAttributes:GetWoundResistance() end

---Provides class information for the Guardian player class.
---@class Turbine.Gameplay.Attributes.GuardianAttributes : Turbine.Gameplay.ClassAttributes
---@field IsBlockTier1AvailableChanged fun(sender: table, args: table) Event fired when the block tier 1 availability has changed.
---@field IsBlockTier2AvailableChanged fun(sender: table, args: table) Event fired when the block tier 2 availability has changed.
---@field IsBlockTier3AvailableChanged fun(sender: table, args: table) Event fired when the block tier 2 availability has changed.
---@field IsParryTier1AvailableChanged fun(sender: table, args: table) Event fired when the parry tier 1 availability has changed.
---@field IsParryTier2AvailableChanged fun(sender: table, args: table) Event fired when the parry tier 2 availability has changed.
---@field IsParryTier3AvailableChanged fun(sender: table, args: table) Event fired when the parry tier 2 availability has changed.
---@field StanceChanged fun(sender: table, args: table) Event fired when the stance changes.
Turbine.Gameplay.Attributes.GuardianAttributes = {}

---Gets the current stance.
---@return number # The current stance.
function Turbine.Gameplay.Attributes.GuardianAttributes:GetStance() end

---Returns true if the first tier block skills are usable.
---@return boolean # True if the first tier block skills are usable.
function Turbine.Gameplay.Attributes.GuardianAttributes:IsBlockTier1Available() end

---Returns true if the second tier block skills are usable.
---@return boolean # True if the second tier block skills are usable.
function Turbine.Gameplay.Attributes.GuardianAttributes:IsBlockTier2Available() end

---Returns true if the third tier block skills are usable.
---@return boolean # True if the third tier block skills are usable.
function Turbine.Gameplay.Attributes.GuardianAttributes:IsBlockTier3Available() end

---Returns true if the first tier parry skills are usable.
---@return boolean # True if the first tier parry skills are usable.
function Turbine.Gameplay.Attributes.GuardianAttributes:IsParryTier1Available() end

---Returns true if the second tier parry skills are usable.
---@return boolean # True if the second tier parry skills are usable.
function Turbine.Gameplay.Attributes.GuardianAttributes:IsParryTier2Available() end

---Returns true if the third tier parry skills are usable.
---@return boolean # True if the third tier parry skills are usable.
function Turbine.Gameplay.Attributes.GuardianAttributes:IsParryTier3Available() end

---Provides class information for the HighElf race.
---@class Turbine.Gameplay.Attributes.HighElfAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.Attributes.HighElfAttributes = {}

---Provides class information for the Hobbit race.
---@class Turbine.Gameplay.Attributes.HobbitAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.Attributes.HobbitAttributes = {}

---Provides class information for the Hunter player class.
---@class Turbine.Gameplay.Attributes.HunterAttributes : Turbine.Gameplay.ClassAttributes
---@field FocusChanged fun(sender: table, args: table) Event fired when the focus of a hunter has changed.
---@field StanceChanged fun(sender: table, args: table) Event fired when the stance changes.
Turbine.Gameplay.Attributes.HunterAttributes = {}

---Gets the current focus of a hunter.
---@return number # The current focus of a hunter.
function Turbine.Gameplay.Attributes.HunterAttributes:GetFocus() end

---Gets the current stance.
---@return number # The current stance.
function Turbine.Gameplay.Attributes.HunterAttributes:GetStance() end

---Provides class information for the Lore Master player class.
---@class Turbine.Gameplay.Attributes.LoreMasterAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.LoreMasterAttributes = {}

---Provides class information for the Man race.
---@class Turbine.Gameplay.Attributes.ManAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.Attributes.ManAttributes = {}

---Provides class information for the Minstrel player class.
---@class Turbine.Gameplay.Attributes.MinstrelAttributes : Turbine.Gameplay.ClassAttributes
---@field IsSerenadeTier1Changed fun(sender: table, args: table) Event fired when the serenade tier 1 availability has changed.
---@field IsSerenadeTier2Changed fun(sender: table, args: table) Event fired when the serenade tier 2 availability has changed.
---@field IsSerenadeTier3Changed fun(sender: table, args: table) Event fired when the serenade tier 2 availability has changed.
---@field StanceChanged fun(sender: table, args: table) Event fired when the stance changes.
Turbine.Gameplay.Attributes.MinstrelAttributes = {}

---Gets the current stance.
---@return number # The current stance.
function Turbine.Gameplay.Attributes.MinstrelAttributes:GetStance() end

---Returns true if the first tier serenade skills are usable.
---@return boolean # True if the first tier serenade skills are usable.
function Turbine.Gameplay.Attributes.MinstrelAttributes:IsSerenadeTier1Available() end

---Returns true if the second tier serenade skills are usable.
---@return boolean # True if the second tier serenade skills are usable.
function Turbine.Gameplay.Attributes.MinstrelAttributes:IsSerenadeTier2Available() end

---Returns true if the third tier serenade skills are usable.
---@return boolean # True if the third tier serenade skills are usable.
function Turbine.Gameplay.Attributes.MinstrelAttributes:IsSerenadeTier3Available() end

---Provides class information for the Monster Player entities.
---@class Turbine.Gameplay.Attributes.MonsterPlayerAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.Attributes.MonsterPlayerAttributes = {}

---Gets the destiny points of the player.
---@return number # . The destiny points of the player.
function Turbine.Gameplay.Attributes.MonsterPlayerAttributes:GetDestinyPoints() end

---Gets the money of the player in copper.
---@return number # . The money of the player in copper.
function Turbine.Gameplay.Attributes.MonsterPlayerAttributes:GetMoney() end

---Gets the money of the player in gold, silver, and copper.
---@return . The money of the player returned as three values that are the gold, silver, and copper.
function Turbine.Gameplay.Attributes.MonsterPlayerAttributes:GetMoneyComponents() end

---Provides class information for the Black Arrow monster class.
---@class Turbine.Gameplay.Attributes.RangerAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.RangerAttributes = {}

---Provides class information for the Reaver monster class.
---@class Turbine.Gameplay.Attributes.ReaverAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.ReaverAttributes = {}

---Provides class information for the Rune-Keeper player class.
---@class Turbine.Gameplay.Attributes.RuneKeeperAttributes : Turbine.Gameplay.ClassAttributes
---@field AttunementChanged fun(sender: table, args: table) Event fired when the attunement of a Rune-Keeper has changed.
---@field IsChargedChanged fun(sender: table, args: table) Event fired when the charge state of the Rune-Keeper changes.
Turbine.Gameplay.Attributes.RuneKeeperAttributes = {}

---Gets the current attunement of a Rune-Keeper.
---@return number # The current attunement of a Rune-Keeper.
function Turbine.Gameplay.Attributes.RuneKeeperAttributes:GetAttunement() end

---Returns true if the Rune-Keeper is charged.
---@return boolean # True if the Rune-Keeper is charged.
function Turbine.Gameplay.Attributes.RuneKeeperAttributes:IsCharged() end

---Provides class information for the Stalker monster class.
---@class Turbine.Gameplay.Attributes.StalkerAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.StalkerAttributes = {}

---Provides class information for the Stout-axe race.
---@class Turbine.Gameplay.Attributes.StoutAxeAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.Attributes.StoutAxeAttributes = {}

---Provides class information for the Black Arrow monster class.
---@class Turbine.Gameplay.Attributes.TrollAttributes : Turbine.Gameplay.ClassAttributes
---@field RampageChanged fun(sender: table, args: table) Event fired when the rampage of a Troll has changed.
Turbine.Gameplay.Attributes.TrollAttributes = {}

---Gets the current rampage of a Troll.
---@return number # The current rampage of a Troll.
function Turbine.Gameplay.Attributes.TrollAttributes:GetRampage() end

---Provides class information for the Black Arrow monster class.
---@class Turbine.Gameplay.Attributes.WarLeaderAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.WarLeaderAttributes = {}

---Provides class information for the Warden player class.
---@class Turbine.Gameplay.Attributes.WardenAttributes : Turbine.Gameplay.ClassAttributes
---@field GambitChanged fun(sender: table, args: table) Event fired when the gambit has changed.
---@field MaxGambitCountChanged fun(sender: table, args: table) Event fired when the number of gambit slots has changed.
---@field StanceChanged fun(sender: table, args: table) Event fired when the stance changes.
Turbine.Gameplay.Attributes.WardenAttributes = {}

---Gets the active gambit at the specified index.
---@param index number
---@return number # The active gambit at the specified index.
function Turbine.Gameplay.Attributes.WardenAttributes:GetGambit(index) end

---Gets the number of gambits active.
---@return number # The number of gambits active.
function Turbine.Gameplay.Attributes.WardenAttributes:GetGambitCount() end

---Gets the maximum gambits the warden can use.
---@return number # The maximum gambits the warden can use.
function Turbine.Gameplay.Attributes.WardenAttributes:GetMaxGambitCount() end

---Gets the current stance.
---@return number # The current stance.
function Turbine.Gameplay.Attributes.WardenAttributes:GetStance() end

---Gets the list of trained gambits.
---@return Turbine.Gameplay.SkillList # The list of trained gambits.
function Turbine.Gameplay.Attributes.WardenAttributes:GetTrainedGambits() end

---Gets the list of untrained gambits.
---@return Turbine.Gameplay.SkillList # The list of untrained gambits.
function Turbine.Gameplay.Attributes.WardenAttributes:GetUntrainedGambits() end

---Provides class information for the Weaver monster class.
---@class Turbine.Gameplay.Attributes.WeaverAttributes : Turbine.Gameplay.ClassAttributes
Turbine.Gameplay.Attributes.WeaverAttributes = {}

---Provides access to a player's backpack.
---@class Turbine.Gameplay.Backpack : Turbine.Object
---@field ItemAdded fun(sender: table, args: table) Event fired when an item is added to the backpack.
---@field ItemMoved fun(sender: table, args: table) Event fired when an item is moved in the backpack.
---@field ItemRemoved fun(sender: table, args: table) Event fired when an item is removed from the backpack.
---@field SizeChanged fun(sender: table, args: table) Event fired when the size of the backpack has changed.
Turbine.Gameplay.Backpack = {}

---Gets an item from the player's backpack.
---@param index number The index of the item to get.
---@return Turbine.Gameplay.Item # Either nil if there is no item there or the index is invalid, or the Item that is in the given index.
function Turbine.Gameplay.Backpack:GetItem(index) end

---Gets the size of the player's backpack.
---@return number # The size of the player's backpack.
function Turbine.Gameplay.Backpack:GetSize() end

---Function to handle moving or swapping an item in our inventory.
---This DOES NOT handle dragging items from any of the character banks or housing hooks.
---For that functionality please use "PerformShortcutDrop.".
---@param item Turbine.Gameplay.Item The LuaItem representing the item you are trying to move
---@param destinationIndex number The index into the backpack where you are trying to place the item
---@param split boolean Whether or not we want to split the item's stack while dragging it
function Turbine.Gameplay.Backpack:PerformItemDrop(item, destinationIndex, split) end

---Function to handle dropping any kind of item into the backpack.
---If the item is already in the backpack or is coming from a housing hook, it will perform a swap with anything at the destination index.
---@param shortcut Turbine.UI.Lotro.Shortcut The LuaShortcut containing the item info needed for handling drag and drop. This MUST be generated by a valid drag and drop message or moving things from the vaults and housing hooks will generate errors!
---@param destinationIndex number The index into the backpack where you are trying to drop the item
---@param split boolean Whether or not we want to split the item's stack while dragging it
function Turbine.Gameplay.Backpack:PerformShortcutDrop(shortcut, destinationIndex, split) end

---A container of items that are only accessible at designated bank locations.
---@class Turbine.Gameplay.Bank : Turbine.Object
---@field CapacityChanged fun(sender: table, args: table) Event fired when the capacity of the bank has changed.
---@field ChestNameChanged fun(sender: table, args: table) Event fired when the name of a chest has changed.
---@field CountChanged fun(sender: table, args: table) Event fired when the count of items in the bank changes.
---@field IsAvailableChanged fun(sender: table, args: table) Event fired when the availability of the bank changes.
---@field ItemAdded fun(sender: table, args: table) Event fired when an item is added to a bank.
---@field ItemMoved fun(sender: table, args: table) Event fired when an item is moved from one chest to another.
---@field ItemRemoved fun(sender: table, args: table) Event fired when an item is removed from a bank.
---@field ItemsRefreshed fun(sender: table, args: table) Event fired when the contents of the bank has been refreshed.
Turbine.Gameplay.Bank = {}

---Gets the number of items that the bank can hold.
---@return number # The number of items that the bank can hold.
function Turbine.Gameplay.Bank:GetCapacity() end

---Gets the number of chest that are available.
---@return number # The number of chest that are available.
function Turbine.Gameplay.Bank:GetChestCount() end

---Gets the name of a chest.
---@param chestType any
---@return string # The name of the specified chest.
function Turbine.Gameplay.Bank:GetChestName(chestType) end

---Gets the numbers of items in the bank.
---@return number # The number of items in the bank.
function Turbine.Gameplay.Bank:GetCount() end

---Gets and item from the player's bank.
---@param index number The index of the item to get.
---@return Either nil if there is no item there or the index is invalid, or the Item that is in the given index.
function Turbine.Gameplay.Bank:GetItem(index) end

---Gets a flag indicating if the bank is currently available.
---@return boolean
function Turbine.Gameplay.Bank:IsAvailable() end

---Handles the dropping of items into a bank.
---@param shortcut Turbine.UI.Lotro.Shortcut The shortcut information that was generated as part of a drag and drop event that should contain an item to perform an action on.
---@param targetChest The target chest the drop should occur into.
---@param split boolean Flag indicating if the item split dialog should be displayed for the operation.
function Turbine.Gameplay.Bank:PerformShortcutDrop(shortcut, targetChest, split) end

---A basic mount.
---@class Turbine.Gameplay.BasicMount : Turbine.Gameplay.Mount
---@field MaxMoraleChanged fun(sender: table, args: table) Event fired when the mount's max morale changes.
---@field MoraleChanged fun(sender: table, args: table) Event fired when the mount's morale changes.
Turbine.Gameplay.BasicMount = {}

---Gets the max morale of a basic mount.
---@return number # The max morale of a basic mount.
function Turbine.Gameplay.BasicMount:GetMaxMorale() end

---Gets the morale of a basic mount.
---@return number # The morale of a basic mount.
function Turbine.Gameplay.BasicMount:GetMorale() end

---Base class for class information.
---@class Turbine.Gameplay.ClassAttributes : Turbine.Gameplay.Attributes
Turbine.Gameplay.ClassAttributes = {}

---A mount that can be used in combat.
---@class Turbine.Gameplay.CombatMount : Turbine.Gameplay.Mount
---@field BaseMaxMoraleChanged fun(sender: table, args: table) Event fired when the mount's base max morale changes.
---@field BaseMaxPowerChanged fun(sender: table, args: table) Event fired when he mount's base max power changes.
---@field FuryChanged fun(sender: table, args: table) Event fired when he mount's max temporary power changes.
---@field MaxMoraleChanged fun(sender: table, args: table) Event fired when the mount's max morale changes.
---@field MaxPowerChanged fun(sender: table, args: table) Event fired when he mount's max power changes.
---@field MaxTemporaryMoraleChanged fun(sender: table, args: table) Event fired when the mount's max temporary morale changes.
---@field MaxTemporaryPowerChanged fun(sender: table, args: table) Event fired when he mount's max temporary power changes.
---@field MoraleChanged fun(sender: table, args: table) Event fired when the mount's morale changes.
---@field PowerChanged fun(sender: table, args: table) Event fired when he mount's power changes.
---@field TemporaryMoraleChanged fun(sender: table, args: table) Event fired when the mount's temporary morale changes.
---@field TemporaryPowerChanged fun(sender: table, args: table) Event fired when he mount's temporary power changes.
Turbine.Gameplay.CombatMount = {}

---Gets the modified agility of the player.
---@return number # The modified agility of the player.
function Turbine.Gameplay.CombatMount:GetAgility() end

---Gets the armor value of the mount.
---@return number # The armor value of the mount.
function Turbine.Gameplay.CombatMount:GetArmor() end

---Gets the unmodified agility of the mount.
---@return number # The unmodified agility of the mount.
function Turbine.Gameplay.CombatMount:GetBaseAgility() end

---Gets the base armor value of the mount.
---@return number # The base armor value of the mount.
function Turbine.Gameplay.CombatMount:GetBaseArmor() end

---Gets the base max morale of the mount.
---@return number # The base max morale of the mount.
function Turbine.Gameplay.CombatMount:GetBaseMaxMorale() end

---Gets the base max power of the mount.
---@return number # The base max power of the mount.
function Turbine.Gameplay.CombatMount:GetBaseMaxPower() end

---Gets the unmodified strength of the mount.
---@return number # The unmodified strength of the mount.
function Turbine.Gameplay.CombatMount:GetBaseStrength() end

---Gets the current fury of the combat horse.
---@return number # The current fury of the combat horse.
function Turbine.Gameplay.CombatMount:GetFury() end

---Gets the max fury of the combat horse.
---@return number # The max fury of the combat horse.
function Turbine.Gameplay.CombatMount:GetMaxFury() end

---Gets the max morale of the mount.
---@return number # The max morale of the mount.
function Turbine.Gameplay.CombatMount:GetMaxMorale() end

---Gets the max power of the mount.
---@return number # The max power of the mount.
function Turbine.Gameplay.CombatMount:GetMaxPower() end

---Gets the maximum temporary morale of the mount.
---@return number # The maximum temporary morale of the mount.
function Turbine.Gameplay.CombatMount:GetMaxTemporaryMorale() end

---Gets the max temporary power of the mount.
---@return number # The max temporary power of the mount.
function Turbine.Gameplay.CombatMount:GetMaxTemporaryPower() end

---Gets the current morale of the mount.
---@return number # The current morale of the mount.
function Turbine.Gameplay.CombatMount:GetMorale() end

---Gets the current power of the mount.
---@return number # The current power of the mount.
function Turbine.Gameplay.CombatMount:GetPower() end

---Gets the modified strength of the player.
---@return number # The modified strength of the player.
function Turbine.Gameplay.CombatMount:GetStrength() end

---Gets the temporary morale of the mount.
---@return number # The temporary morale of the mount.
function Turbine.Gameplay.CombatMount:GetTemporaryMorale() end

---Gets the temporary power of the mount.
---@return number # The temporary power of the mount.
function Turbine.Gameplay.CombatMount:GetTemporaryPower() end

---Represents an effect that can be applied to an entity.
---@class Turbine.Gameplay.Effect : Turbine.Object
---@field CategoryChanged fun(sender: table, args: table) Event fired when the category changes.
---@field DescriptionChanged fun(sender: table, args: table) Event fired when the description changes.
---@field DurationChanged fun(sender: table, args: table) Event fired when the duration changes.
---@field IconChanged fun(sender: table, args: table) Event fired when the icon changes.
---@field IsCurableChanged fun(sender: table, args: table) Event fired when the curable state changes.
---@field IsDebuffChanged fun(sender: table, args: table) Event fired when the debuff state changes.
---@field IsDispellableChanged fun(sender: table, args: table) Event fired when the dispellable state changes.
---@field NameChanged fun(sender: table, args: table) Event fired when the name changes.
---@field StartTimeChanged fun(sender: table, args: table) Event fired when the start time changes.
Turbine.Gameplay.Effect = {}

---Gets the category of the effect.
---@return number
function Turbine.Gameplay.Effect:GetCategory() end

---Gets the description of the effect.
---@return string # Thedescription of the effect.
function Turbine.Gameplay.Effect:GetDescription() end

---Gets the duration of the effect.
---@return number # The duration of the effect.
function Turbine.Gameplay.Effect:GetDuration() end

---Gets a unique ID for the effect.
---@return number # A unique ID for the effect.
function Turbine.Gameplay.Effect:GetID() end

---Gets the icon for the effect.
---@return number # The icon id for the effect.
function Turbine.Gameplay.Effect:GetIcon() end

---Gets the name of the effect.
---@return string # The name of the effect.
function Turbine.Gameplay.Effect:GetName() end

---Gets the time the effect started.
---@return number # The time the effect started.
function Turbine.Gameplay.Effect:GetStartTime() end

---Gets a flag indicating if the effect is a curable.
---@return boolean # True if the effect is curable.
function Turbine.Gameplay.Effect:IsCurable() end

---Gets a flag indicating if the effect is a debuff.
---@return boolean # True if the effect is curable.
function Turbine.Gameplay.Effect:IsDebuff() end

---Gets a flag indicating if the effect is a dispellable effect.
---@return boolean # True if the effect is dispellable.
function Turbine.Gameplay.Effect:IsDispellable() end

---A utility class used by Actors to hold the list of effects.
---@class Turbine.Gameplay.EffectList : Turbine.Object
---@field EffectAdded fun(sender: table, args: table) Event fired when an effect is added.
---@field EffectRemoved fun(sender: table, args: table) Event fired when an effect is removed.
---@field EffectsCleared fun(sender: table, args: table) Event fired when all the effects are cleared.
Turbine.Gameplay.EffectList = {}

---Test if the list contains the specified effect.
---@param value Turbine.Gameplay.Effect The effect to test for.
---@return boolean # True if the effects list contains the effect.
function Turbine.Gameplay.EffectList:Contains(value) end

---Gets an effect.
---@param index number The index of the effect to get.
---@return Turbine.Gameplay.Effect # The effect at th specified index.
function Turbine.Gameplay.EffectList:Get(index) end

---Gets the number of effects in the list.
---@return number # The number of effects in the list
function Turbine.Gameplay.EffectList:GetCount() end

---Gets the index of an effect in the list.
---@param value Turbine.Gameplay.Effect The effect to get the index of.
---@return number # The index of the effect or -1 if it is not in the list.
function Turbine.Gameplay.EffectList:IndexOf(value) end

---Base class for any entity in the game.
---@class Turbine.Gameplay.Entity : Turbine.Gameplay.PropertyHandler
---@field NameChanged fun(sender: table, args: table) Event fired when the actor's name changes.
Turbine.Gameplay.Entity = {}

---Gets the name of the entity.
---@return string # The name of the entity.
function Turbine.Gameplay.Entity:GetName() end

---Returns true if this entity is the local player entity.
---(Deprecated).
---@return boolean # Whether this is the local player entity or not.
function Turbine.Gameplay.Entity:IsLocalPlayer() end

---@class Turbine.Gameplay.EntityReference : Turbine.Object
Turbine.Gameplay.EntityReference = {}

---Provides access to a player's equipment.
---@class Turbine.Gameplay.Equipment : Turbine.Object
---@field ItemEquipped fun(sender: table, args: table) Event fired when an item is equipped.
---@field ItemUnequipped fun(sender: table, args: table) Event fired when an item is unequipped.
Turbine.Gameplay.Equipment = {}

---Gets and item from the player's backpack.
---@param index number The index of the item to get.
---@return Turbine.Gameplay.Item # Either nil if there is no item there or the index is invalid, or the Item that is in the given index.
function Turbine.Gameplay.Equipment:GetItem(index) end

---Gets the number of items that can be equipped.
---@return number # The number of items that can be equipped.
function Turbine.Gameplay.Equipment:GetSize() end

---Information about a gambit skill.
---@class Turbine.Gameplay.GambitSkill : Turbine.Gameplay.Skill
Turbine.Gameplay.GambitSkill = {}

---Information about a gambit skill.
---@class Turbine.Gameplay.GambitSkillInfo : Turbine.Gameplay.SkillInfo
Turbine.Gameplay.GambitSkillInfo = {}

---Gets the required gambit at the specified index.
---@param index number
---@return number # The required gambit at the specified index.
function Turbine.Gameplay.GambitSkillInfo:GetGambit(index) end

---Gets the number of gambits required to use the gambit skill.
---@return number # The number of gambits required to use the gambit skill.
function Turbine.Gameplay.GambitSkillInfo:GetGambitCount() end

---An item that a user can have.
---@class Turbine.Gameplay.Item : Turbine.Gameplay.Entity
Turbine.Gameplay.Item = {}

---Gets information about the item.
---@return Turbine.Gameplay.ItemInfo # Information about the item.
function Turbine.Gameplay.Item:GetItemInfo() end

---Container for various item information.
---@class Turbine.Gameplay.ItemInfo : Turbine.Object
Turbine.Gameplay.ItemInfo = {}

---Gets the image ID for the background of the item.
---@return number
function Turbine.Gameplay.ItemInfo:GetBackgroundImageID() end

---Gets the category of the item.
---@return number # The category of the item.
function Turbine.Gameplay.ItemInfo:GetCategory() end

---Gets the description of the item.
---@return string # The description of the item.
function Turbine.Gameplay.ItemInfo:GetDescription() end

---Gets the durability of the item.
---@return number # A value from ItemDurability representing the durability of the item.
function Turbine.Gameplay.ItemInfo:GetDurability() end

---Gets the image ID for the icon of the item.
---@return number
function Turbine.Gameplay.ItemInfo:GetIconImageID() end

---Gets the maximum number of instances that can be contained at one time.
---@return number # The maximum number of instances that can be contained at one time.
function Turbine.Gameplay.ItemInfo:GetMaxQuantity() end

---Gets the maximum number of instances that can be stacked together.
---@return number # The maximum number of instances that can be stacked together.
function Turbine.Gameplay.ItemInfo:GetMaxStackSize() end

---Gets the name of the item.
---@return string # The name of the item.
function Turbine.Gameplay.ItemInfo:GetName() end

---Gets the name of the item including quantity information.
---@param quantity number
---@return string # The name of the item including quantity information.
function Turbine.Gameplay.ItemInfo:GetNameWithQuantity(quantity) end

---Gets the quality of the item.
---@return number # A value from ItemQuality representing the quality of the item.
function Turbine.Gameplay.ItemInfo:GetQuality() end

---Gets the image ID for the quality of the item.
---@return number
function Turbine.Gameplay.ItemInfo:GetQualityImageID() end

---Gets the image ID for the shadow of the item.
---@return number
function Turbine.Gameplay.ItemInfo:GetShadowImageID() end

---Gets the image ID for the underlay of the item.
---@return number
function Turbine.Gameplay.ItemInfo:GetUnderlayImageID() end

---Gets a flag indicating if the item is considered magical.
---@return boolean # A flag indicating if the item is considered magical.
function Turbine.Gameplay.ItemInfo:IsMagic() end

---Gets a flag indicating if the item is unique.
---@return boolean # A flag indicating if the item is unique.
function Turbine.Gameplay.ItemInfo:IsUnique() end

---A class that represents the local player.
---@class Turbine.Gameplay.LocalPlayer : Turbine.Gameplay.Player
---@field InCombatChanged fun(sender: table, args: table) Event fired when the player's in combat state changes.
---@field MountChanged fun(sender: table, args: table) Event fired when the player's mount has changed.
Turbine.Gameplay.LocalPlayer = {}

---Gets the general attributes of a player.
---@return Turbine.Gameplay.Attributes
function Turbine.Gameplay.LocalPlayer:GetAttributes() end

---Gets the player's backpack.
---@return Turbine.Gameplay.Backpack # The player's backpack.
function Turbine.Gameplay.LocalPlayer:GetBackpack() end

---Gets attribute information specific to a class.
---@return Turbine.Gameplay.Attributes # Attributes specified to the class.
function Turbine.Gameplay.LocalPlayer:GetClassAttributes() end

---Gets the player's equipment.
---@return Turbine.Gameplay.Equipment # The player's backpack.
function Turbine.Gameplay.LocalPlayer:GetEquipment() end

---Gets the instance of the Local Player.
---@return Turbine.Gameplay.LocalPlayer # The instance of the Local Player.
function Turbine.Gameplay.LocalPlayer.GetInstance() end

---Gets the player's mount.
---@return Turbine.Gameplay.Mount # A reference to the player's current mount of nil if the player is not riding a mount.
function Turbine.Gameplay.LocalPlayer:GetMount() end

---Gets attribute information specific to a race.
---@return Turbine.Gameplay.Attributes # Attributes specified to the race.
function Turbine.Gameplay.LocalPlayer:GetRaceAttributes() end

---Gets the ready state of a player based on the result of a ready check.
---@return number # Returns a value indicating the ready state of a player based on a ready check.
function Turbine.Gameplay.LocalPlayer:GetReadyState() end

---Gets the player's shared storage.
---@return Turbine.Gameplay.SharedStorage # The player's shared storage.
function Turbine.Gameplay.LocalPlayer:GetSharedStorage() end

---Gets the list of trained skills.
---@return Turbine.Gameplay.SkillList # The list of the trained skills.
function Turbine.Gameplay.LocalPlayer:GetTrainedSkills() end

---Gets the list of untrained skills.
---@return Turbine.Gameplay.SkillList # The list of the trained skills.
function Turbine.Gameplay.LocalPlayer:GetUntrainedSkills() end

---Gets the player's vault.
---@return Turbine.Gameplay.Vault # The player's vault.
function Turbine.Gameplay.LocalPlayer:GetVault() end

---Gets the player's wallet.
---@return Turbine.Gameplay.Wallet # The player's wallet.
function Turbine.Gameplay.LocalPlayer:GetWallet() end

---Gets a flag indicating if the player is in combat.
---@return boolean # True if the player is in combat.
function Turbine.Gameplay.LocalPlayer:IsInCombat() end

---Gets a flag indicating if the player is disconnected.
---@return boolean # A flag indicating if the player is disconnected. If this is ever true and the current player is the local player, please consult a physician, or a zombie master.
function Turbine.Gameplay.LocalPlayer:IsLinkDead() end

---Gets a flag indicating if the player has voice communication enabled.
---@return boolean # A flag indicating if the player has voice communication enabled.
function Turbine.Gameplay.LocalPlayer:IsVoiceEnabled() end

---Class representing an in game mount.
---@class Turbine.Gameplay.Mount : Turbine.Gameplay.Entity
Turbine.Gameplay.Mount = {}

---Gets the name of the entity.
---@return string # The name of the entity.
function Turbine.Gameplay.Mount:GetName() end

---This class provides access to party information.
---This is either your fellowship or your tribe depending on your alliance.
---@class Turbine.Gameplay.Party : Turbine.Object
---@field AssistTargetAdded fun(sender: table, args: table) Event fired when an assist target has been added.
---@field AssistTargetRemoved fun(sender: table, args: table) Event fired when an assist target has been removed.
---@field LeaderChanged fun(sender: table, args: table) Event fired when the leader of the fellowship has changed.
---@field MemberAdded fun(sender: table, args: table) Event fired when a member has joined the party.
---@field MemberRemoved fun(sender: table, args: table) Event fired when a member has been removed from the party.
Turbine.Gameplay.Party = {}

---Gets the specified assist target.
---@param index number The index of the assist target to get.
---@return Turbine.Gameplay.Player # The assist target at the specified index.
function Turbine.Gameplay.Party:GetAssistTarget(index) end

---Gets the number of assist targets for the party.
---@return number # Returns the numbers of assist targets for the party.
function Turbine.Gameplay.Party:GetAssistTargetCount() end

---Gets the leader of the fellowship.
---@return Turbine.Gameplay.Player # The leader of the fellowship.
function Turbine.Gameplay.Party:GetLeader() end

---Gets the specified member.
---@param index number The index of the member to get.
---@return Turbine.Gameplay.Player # The member at the specified index.
function Turbine.Gameplay.Party:GetMember(index) end

---Gets the number of members in the party.
---@return number # Returns the numbers of members in the party.
function Turbine.Gameplay.Party:GetMemberCount() end

---Test if the given play is an assist target of this party.
---@param player Turbine.Gameplay.Player The player to test.
---@return boolean # True if the player is an assist target of this party.
function Turbine.Gameplay.Party:IsAssistTarget(player) end

---Test if the given play is a member of this party.
---@param player Turbine.Gameplay.Player The player to test.
---@return boolean # True if the player is a member of this party.
function Turbine.Gameplay.Party:IsMember(player) end

---@class Turbine.Gameplay.PartyMember : Turbine.Gameplay.Player
Turbine.Gameplay.PartyMember = {}

---Gets the class of the player.
---@return number # The class of the player.
function Turbine.Gameplay.PartyMember:GetClass() end

---Gets the level of the actor.
---@return number # The level of the actor. If this information is not available, an error will be raised.
function Turbine.Gameplay.PartyMember:GetLevel() end

---Gets the name of the entity.
---@return string # The name of the entity.
function Turbine.Gameplay.PartyMember:GetName() end

---Gets the party the player is a member of.
---@return Turbine.Gameplay.Party # Returns the party the player is a member of. If the player is not currently in a party this will return nil.
function Turbine.Gameplay.PartyMember:GetParty() end

---Gets the raid the player is a member of.
---@return Returns the raid the player is a member of. If the player is not currently in a raid this will return nil.
function Turbine.Gameplay.PartyMember:GetRaid() end

---Gets the ready state of a player based on the result of a ready check.
---@return number # Returns a value indicating the ready state of a player based on a ready check.
function Turbine.Gameplay.PartyMember:GetReadyState() end

---Gets a flag indicating if the player is disconnected.
---@return boolean # A flag indicating if the player is disconnected. If this is ever true and the current player is the local player, please consult a physician, or a zombie master.
function Turbine.Gameplay.PartyMember:IsLinkDead() end

---Gets a flag indicating if the player has voice communication enabled.
---@return boolean # A flag indicating if the player has voice communication enabled.
function Turbine.Gameplay.PartyMember:IsVoiceEnabled() end

---A pet is an actor that a player owns and controls.
---@class Turbine.Gameplay.Pet : Turbine.Gameplay.Actor
Turbine.Gameplay.Pet = {}

---A class that represents a player in the game.
---@class Turbine.Gameplay.Player : Turbine.Gameplay.Actor
---@field IsLinkDeadChanged fun(sender: table, args: table) Event fired when the link dead state of the player has changed.
---@field IsVoiceActiveChanged fun(sender: table, args: table) Event fired when the state of the player transmitting voice data has changed.
---@field IsVoiceEnabledChanged fun(sender: table, args: table) Event fired when the voice enabled state of the player has changed.
---@field PartyChanged fun(sender: table, args: table) Event fired when the party of the player has changed.
---@field PetChanged fun(sender: table, args: table) Event fired when the pet of the player has changed.
---@field RaidChanged fun(sender: table, args: table) Event fired when the raid of the player has changed.
---@field ReadyStateChanged fun(sender: table, args: table) Event fired when the ready state of the player has changed.
Turbine.Gameplay.Player = {}

---Gets the alignment of the player.
---@return number # The alignment of the player.
function Turbine.Gameplay.Player:GetAlignment() end

---Gets the class of the player.
---@return number # The class of the player.
function Turbine.Gameplay.Player:GetClass() end

---Gets the party the player is a member of.
---@return Turbine.Gameplay.Party # Returns the party the player is a member of. If the player is not currently in a party this will return nil.
function Turbine.Gameplay.Player:GetParty() end

---Gets the pet of the player.
---@return Turbine.Gameplay.Pet # The player's pet.
function Turbine.Gameplay.Player:GetPet() end

---Gets the race of the player.
---@return number # The race of the player.
function Turbine.Gameplay.Player:GetRace() end

---Gets the ready state of a player based on the result of a ready check.
---@return number # Returns a value indicating the ready state of a player based on a ready check.
function Turbine.Gameplay.Player:GetReadyState() end

---Gets a flag indicating if the player is disconnected.
---@return boolean # A flag indicating if the player is disconnected. If this is ever true and the current player is the local player, please consult a physician, or a zombie master.
function Turbine.Gameplay.Player:IsLinkDead() end

---Gets a flag indicating if the player is currently transmitting voice data.
---@return boolean # A flag indicating if the player is currently transmitting voice data.
function Turbine.Gameplay.Player:IsVoiceActive() end

---Gets a flag indicating if the player has voice communication enabled.
---@return boolean # A flag indicating if the player has voice communication enabled.
function Turbine.Gameplay.Player:IsVoiceEnabled() end

---Information about a profession.
---@class Turbine.Gameplay.ProfessionInfo : Turbine.Object
---@field MasteryExperienceChanged fun(sender: table, args: table) Event fired when the current mastery experience earned for the profession has changed.
---@field MasteryExperienceTargetChanged fun(sender: table, args: table) Event fired when the target mastery experience for the profession has changed.
---@field MasteryLevelChanged fun(sender: table, args: table) Event fired when the current mastery level of the profession has changed.
---@field MasteryTitleChanged fun(sender: table, args: table) Event fired when the current mastery title of the profession has changed.
---@field ProficiencyExperienceChanged fun(sender: table, args: table) Event fired when the current proficiency experience earned for the profession has changed.
---@field ProficiencyExperienceTargetChanged fun(sender: table, args: table) Event fired when the target proficiency experience for the profession has changed.
---@field ProficiencyLevelChanged fun(sender: table, args: table) Event fired when the current proficiency level of the profession has changed.
---@field ProficiencyTitleChanged fun(sender: table, args: table) Event fired when the current proficiency title of the profession has changed.
---@field RecipeAdded fun(sender: table, args: table) Event fired when a recipe has been added.
---@field RecipeRemoved fun(sender: table, args: table) Event fired when a recipe has been removed.
Turbine.Gameplay.ProfessionInfo = {}

---Gets the current mastery experience earned for the profession.
---@return number # The current mastery experience earned for the profession.
function Turbine.Gameplay.ProfessionInfo:GetMasteryExperience() end

---Gets the target mastery experience for the profession.
---@return number # The target mastery experience for the profession.
function Turbine.Gameplay.ProfessionInfo:GetMasteryExperienceTarget() end

---Gets the current mastery level of the profession.
---@return number # The current mastery level of the profession.
function Turbine.Gameplay.ProfessionInfo:GetMasteryLevel() end

---Gets the current mastery title of the profession.
---@return string # The current mastery title of the profession.
function Turbine.Gameplay.ProfessionInfo:GetMasteryTitle() end

---Gets the name of the profession.
---@return string # The name of the profession.
function Turbine.Gameplay.ProfessionInfo:GetName() end

---Gets the current proficiency experience earned for the profession.
---@return number # The current proficiency experience earned for the profession.
function Turbine.Gameplay.ProfessionInfo:GetProficiencyExperience() end

---Gets the target proficiency experience for the profession.
---@return number # The target proficiency experience for the profession.
function Turbine.Gameplay.ProfessionInfo:GetProficiencyExperienceTarget() end

---Gets the current proficiency level of the profession.
---@return number # The current proficiency level of the profession.
function Turbine.Gameplay.ProfessionInfo:GetProficiencyLevel() end

---Gets the current proficiency title of the profession.
---@return string # The current proficiency title of the profession.
function Turbine.Gameplay.ProfessionInfo:GetProficiencyTitle() end

---Gets the specified recipes for this profession.
---@param index number
---@return Turbine.Gameplay.Recipe # The specified recipes for this profession.
function Turbine.Gameplay.ProfessionInfo:GetRecipe(index) end

---Gets the number of recipes the player knows for this profession.
---@return number # The number of recipes the player knows for this profession.
function Turbine.Gameplay.ProfessionInfo:GetRecipeCount() end

---@class Turbine.Gameplay.PropertyHandler : Turbine.Gameplay.EntityReference
Turbine.Gameplay.PropertyHandler = {}

---Information about a recipe.
---@class Turbine.Gameplay.Recipe : Turbine.Object
Turbine.Gameplay.Recipe = {}

---Gets the base chance to crit when crafting this recipe.
---@return number # The base chance to crit when crafting this recipe.
function Turbine.Gameplay.Recipe:GetBaseCriticalSuccessChance() end

---Gets the category of the recipe.
---@return number # The category of the recipe.
function Turbine.Gameplay.Recipe:GetCategory() end

---Gets the name of category of the recipe.
---@return string # The name of category of the recipe.
function Turbine.Gameplay.Recipe:GetCategoryName() end

---Gets the cooldown between using this recipe.
---@return number # The cooldown between using this recipe.
function Turbine.Gameplay.Recipe:GetCooldown() end

---Gets the item information for the item crafted by this recipe when the player crits.
---@return Turbine.Gameplay.ItemInfo # The item information for the item crafted by this recipe when the player crits.
function Turbine.Gameplay.Recipe:GetCriticalResultItemInfo() end

---Gets the quantity of the critical result item actually crafted when the player crits.
---@return number # The quantity of the critical result item actually crafted when the player crits.
function Turbine.Gameplay.Recipe:GetCriticalResultItemQuantity() end

---Gets the amount of crafting experience rewarded for crafting this recipe.
---@return number # The amount of crafting experience rewarded for crafting this recipe.
function Turbine.Gameplay.Recipe:GetExperienceReward() end

---Gets the information for the specified ingredient.
---@param index number The index of the ingredient to get the information of.
---@return Turbine.Gameplay.RecipeIngredient # The information for the specified ingredient.
function Turbine.Gameplay.Recipe:GetIngredient(index) end

---Gets the number of ingredients required for the recipe.
---@return number # The number of ingredients required for the recipe.
function Turbine.Gameplay.Recipe:GetIngredientCount() end

---Gets the recipe ingredient information for an ingredient pack that can be used instead of the recipe ingredients.
---@return Turbine.Gameplay.RecipeIngredient # The recipe ingredient information for an ingredient pack that can be used instead of the recipe ingredients.
function Turbine.Gameplay.Recipe:GetIngredientPack() end

---Gets the name of the recipe.
---@return string # The name of the recipe.
function Turbine.Gameplay.Recipe:GetName() end

---Gets the information for the specified optional ingredient.
---@param index number The index of the optional ingredient to get the information of.
---@return Turbine.Gameplay.RecipeIngredient # The information for the specified optional ingredient.
function Turbine.Gameplay.Recipe:GetOptionalIngredient(index) end

---Gets the number of optional ingredients for the recipe.
---@return number # The number of optional ingredients for the recipe.
function Turbine.Gameplay.Recipe:GetOptionalIngredientCount() end

---Gets the profession of the recipe.
---@return number # The profession of the recipe.
function Turbine.Gameplay.Recipe:GetProfession() end

---Gets the item information for the item crafted by this recipe.
---@return Turbine.Gameplay.ItemInfo # The item information for the item crafted by this recipe.
function Turbine.Gameplay.Recipe:GetResultItemInfo() end

---Gets the quantity of the result item actually crafted.
---@return number # The quantity of the result item actually crafted.
function Turbine.Gameplay.Recipe:GetResultItemQuantity() end

---Gets the tier of the recipe.
---@return number # The tier of the recipe.
function Turbine.Gameplay.Recipe:GetTier() end

---Gets if the recipe supports critical result items.
---@return boolean # True if the recipe supports critical result items.
function Turbine.Gameplay.Recipe:HasCriticalResultItem() end

---Gets a flag indicating if the recipe is a single use recipe.
---@return boolean # True if the recipe is a single use recipe.
function Turbine.Gameplay.Recipe:IsSingleUse() end

---Information about a recipe ingredient.
---@class Turbine.Gameplay.RecipeIngredient : Turbine.Object
Turbine.Gameplay.RecipeIngredient = {}

---Gets the critical chance this ingredient adds when used as part of a recipe.
---@return number # The critical chance this ingredient adds when used as part of a recipe.
function Turbine.Gameplay.RecipeIngredient:GetCriticalChanceBonus() end

---Gets the item information for the ingredient.
---@return Turbine.Gameplay.ItemInfo # The item information for the ingredient.
function Turbine.Gameplay.RecipeIngredient:GetItemInfo() end

---Gets the quantity required for the recipe.
---@return number # The quantity required for the recipe.
function Turbine.Gameplay.RecipeIngredient:GetRequiredQuantity() end

---A bank that represents the player's shared storage.
---This storage is available to all characters on the same account.
---@class Turbine.Gameplay.SharedStorage : Turbine.Gameplay.Bank
Turbine.Gameplay.SharedStorage = {}

---Information about a skill.
---@class Turbine.Gameplay.Skill : Turbine.Object
Turbine.Gameplay.Skill = {}

---Gets information about the skill.
---@return Turbine.Gameplay.SkillInfo # Information about the skill.
function Turbine.Gameplay.Skill:GetSkillInfo() end

---Information about a skill.
---@class Turbine.Gameplay.SkillInfo : Turbine.Object
Turbine.Gameplay.SkillInfo = {}

---Gets the description of the item.
---@return string # The description of the item.
function Turbine.Gameplay.SkillInfo:GetDescription() end

---Gets the image ID for the icon of the item.
---@return The ID for the skill icon.
function Turbine.Gameplay.SkillInfo:GetIconImageID() end

---Gets the name of the item.
---@return string # The name of the item.
function Turbine.Gameplay.SkillInfo:GetName() end

---Gets the type of the skill.
---@return number # The type of the skill.
function Turbine.Gameplay.SkillInfo:GetType() end

---A list of skills.
---@class Turbine.Gameplay.SkillList : Turbine.Object
Turbine.Gameplay.SkillList = {}

---Gets the number of skills in the list.
---@return number # The number of skills in the list.
function Turbine.Gameplay.SkillList:GetCount() end

---Gets a skill from the list.
---@param index number The index of the skill to get.
---@return Turbine.Gameplay.Skill # The skill at the specified index.
function Turbine.Gameplay.SkillList:GetItem(index) end

---Information about a skill the player has not trained yet.
---@class Turbine.Gameplay.UntrainedSkill : Turbine.Gameplay.Skill
Turbine.Gameplay.UntrainedSkill = {}

---Gets the cost to purchase the skill.
---@return number # The cost to purchase the skill.
function Turbine.Gameplay.UntrainedSkill:GetPrice() end

---Gets the required level necessary to purchase the skill.
---@return number # The required level necessary to purchase the skill.
function Turbine.Gameplay.UntrainedSkill:GetRequiredLevel() end

---Gets the required rank necessary to purchase the skill.
---@return number # The required rank necessary to purchase the skill.
function Turbine.Gameplay.UntrainedSkill:GetRequiredRank() end

---A bank that represents the player's vault storage.
---This storage is only available to the current logged in character.
---@class Turbine.Gameplay.Vault : Turbine.Gameplay.Bank
Turbine.Gameplay.Vault = {}

---Provides access to a player's wallet.
---@class Turbine.Gameplay.Wallet : Turbine.Object
---@field ItemAdded fun(sender: table, args: table) Event fired when an item is added to the wallet.
---@field ItemRemoved fun(sender: table, args: table) Event fired when an item is removed from the wallet.
Turbine.Gameplay.Wallet = {}

---Gets a wallet item from the player's wallet.
---@param index number The index of the item to get.
---@return Turbine.Gameplay.WalletItem # The WalletItem at the specified index..
function Turbine.Gameplay.Wallet:GetItem(index) end

---Gets the number of items in the player's wallet.
---@return number # The number of items in the player's wallet.
function Turbine.Gameplay.Wallet:GetSize() end

---An item that is contained in a user's wallet.
---@class Turbine.Gameplay.WalletItem : Turbine.Object
---@field MaxQuantityChanged fun(sender: table, args: table) Event fired when the max quantity of the wallet item changes.
---@field QuantityChanged fun(sender: table, args: table) Event fired when the quantity of the wallet item changes.
Turbine.Gameplay.WalletItem = {}

---Gets the description of the wallet item.
---@return string # The description of the wallet item.
function Turbine.Gameplay.WalletItem:GetDescription() end

---Gets the image used to identity the wallet item.
---@return The image used to identity the wallet item.
function Turbine.Gameplay.WalletItem:GetImage() end

---Gets the maximum quantity of this wallet item that a player can have.
---@return number # The maximum quantity of this wallet item that a player can have.
function Turbine.Gameplay.WalletItem:GetMaxQuantity() end

---Gets the name of the wallet item.
---@return string # The name of the wallet item.
function Turbine.Gameplay.WalletItem:GetName() end

---Gets the quantity of the wallet item that the player has.
---@return number # The quantity of the wallet item that the player has.
function Turbine.Gameplay.WalletItem:GetQuantity() end

---Gets the small image used to identity the wallet item.
---@return The small image used to identity the wallet item.
function Turbine.Gameplay.WalletItem:GetSmallImage() end

---Gets a flag indicating if the item is shared across all characters of an account.
---@return boolean # A flag indicating if the item is shared across all characters of an account.
function Turbine.Gameplay.WalletItem:IsAccountItem() end
