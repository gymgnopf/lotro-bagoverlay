-- Turbine API -- LOTRO UI namespace (Turbine.UI.Lotro.*)
-- Auto-generated from Standing Stone Games Turbine API documentation.
-- Use with lua-language-server for Zed editor autocomplete.

-- Namespace declaration (makes this namespace visible in autocomplete)
Turbine.UI.Lotro = {}

---List available actions that can be interpretted.
---@class Turbine.UI.Lotro.Action
---@field ArrowMark number Mark Target Arrow.
---@field AssistFellowFive number Assist Fellow Five.
---@field AssistFellowFour number Assist Fellow Four.
---@field AssistFellowSix number Assist Fellow Six.
---@field AssistFellowThree number Assist Fellow Three.
---@field AssistFellowTwo number Assist Fellow Two.
---@field AutoLootAll number Auto Loot All.
---@field BottomFellowshipManoeuvre number Fellowship Bottom Manoeuvre.
---@field CameraInstantMouseLook number Camera Instance Mouse Look.
---@field CaptureScreenshot number Capture Screenshot.
---@field ChatModeReply number Chat Reply.
---@field ClawMark number Mark Target Claw.
---@field ClearAllFilters number Clear All Filters.
---@field DestinyPointPerksPanel number Toggle Destiny Perks Panel.
---@field DismountRemount number Dismount Remount.
---@field DressingRoom number Toggle Dressing Room Panel.
---@field EnterChatMode number Chat Mode.
---@field Escape number The escape key being pressed.
---@field FellowshipSkillAssist number Fellowship Skill Assist.
---@field FindItems number Find Items.
---@field FollowSelection number Selection Follow.
---@field FriendsPanel number Toggle Social Friends Panel.
---@field GroupStagePanel number Toggle Social Group Stage Panel.
---@field HobbyPanel number Toggle Hobby Panel.
---@field HousingPanel number Toggle Housing Panel.
---@field ItemLinkToChat number Chat Link Item.
---@field KinshipPanel number Toggle Social Kinship Panel.
---@field LeafMark number Mark Target Leaf.
---@field LeftFellowshipManoeuvre number Fellowship Left Manoeuvre.
---@field Logout number Logout.
---@field MainMenu number Toggle Start Menu.
---@field MapPanel number Toggle Map Panel.
---@field MoonMark number Mark Target Moon.
---@field MultiUseItem number Multi-use Item.
---@field Music_A2 number Music note A2.
---@field Music_A3 number Music note A3.
---@field Music_A4 number Music note A4.
---@field Music_Ab2 number Music note Ab2.
---@field Music_Ab3 number Music note Ab3.
---@field Music_Ab4 number Music note Ab4.
---@field Music_B2 number Music note B2.
---@field Music_B3 number Music note B3.
---@field Music_B4 number Music note B4.
---@field Music_Bb2 number Music note Bb2.
---@field Music_Bb3 number Music note Bb3.
---@field Music_Bb4 number Music note Bb4.
---@field Music_C2 number Music note C2.
---@field Music_C3 number Music note C3.
---@field Music_C4 number Music note C4.
---@field Music_C5 number Music note C5.
---@field Music_D2 number Music note D2.
---@field Music_D3 number Music note D3.
---@field Music_D4 number Music note D4.
---@field Music_Db2 number Music note Db2.
---@field Music_Db3 number Music note Db3.
---@field Music_Db4 number Music note Db4.
---@field Music_E2 number Music note E2.
---@field Music_E3 number Music note E3.
---@field Music_E4 number Music note E4.
---@field Music_Eb2 number Music note Eb2.
---@field Music_Eb3 number Music note Eb3.
---@field Music_Eb4 number Music note Eb4.
---@field Music_F2 number Music note F2.
---@field Music_F3 number Music note F3.
---@field Music_F4 number Music note F4.
---@field Music_G2 number Music note G2.
---@field Music_G3 number Music note G3.
---@field Music_G4 number Music note G4.
---@field Music_Gb2 number Music note Gb2.
---@field Music_Gb3 number Music note Gb3.
---@field Music_Gb4 number Music note Gb4.
---@field MusicEndSong number Music end song.
---@field PresentMainInventory number Outfit Selection Main.
---@field PresentOutfit1 number Outfit Selection 1.
---@field PresentOutfit2 number Outfit Selection 2.
---@field PresentOutfit3 number Outfit Selection 3.
---@field PresentOutfit4 number Outfit Selection 4.
---@field PresentOutfit5 number Outfit Selection 5.
---@field PresentOutfit6 number Outfit Selection 6.
---@field PresentOutfit7 number Outfit Selection 7.
---@field PresentOutfit8 number Outfit Selection 8.
---@field PreviousAttacker number Select Previous Attack.
---@field PreviousSelection number Select Last.
---@field Quickbar1Visibility number Quickbar 1 Visibility.
---@field Quickbar2Visibility number Quickbar 2 Visibility.
---@field Quickbar3Visibility number Quickbar 3 Visibility.
---@field Quickbar4Visibility number Quickbar 4 Visibility.
---@field Quickbar5Visibility number Quickbar 5 Visibility.
---@field Quickslot_1 number Quickslot 1 (Main bar).
---@field Quickslot_10 number Quickslot 10 (Main bar).
---@field Quickslot_11 number Quickslot 11 (Main bar).
---@field Quickslot_12 number Quickslot 12 (Main bar).
---@field Quickslot_13 number Quickslot 13 (Control bar).
---@field Quickslot_14 number Quickslot 14 (Control bar).
---@field Quickslot_15 number Quickslot 15 (Control bar).
---@field Quickslot_16 number Quickslot 16 (Control bar).
---@field Quickslot_17 number Quickslot 17 (Control bar).
---@field Quickslot_18 number Quickslot 18 (Control bar).
---@field Quickslot_19 number Quickslot 19 (Control bar).
---@field Quickslot_2 number Quickslot 2 (Main bar).
---@field Quickslot_20 number Quickslot 20 (Control bar).
---@field Quickslot_21 number Quickslot 21 (Control bar).
---@field Quickslot_22 number Quickslot 22 (Control bar).
---@field Quickslot_23 number Quickslot 23 (Control bar).
---@field Quickslot_24 number Quickslot 24 (Control bar).
---@field Quickslot_25 number Quickslot 25 (Alt bar).
---@field Quickslot_26 number Quickslot 26 (Alt bar).
---@field Quickslot_27 number Quickslot 27 (Alt bar).
---@field Quickslot_28 number Quickslot 28 (Alt bar).
---@field Quickslot_29 number Quickslot 29 (Alt bar).
---@field Quickslot_3 number Quickslot 3 (Main bar).
---@field Quickslot_30 number Quickslot 30 (Alt bar).
---@field Quickslot_31 number Quickslot 31 (Alt bar).
---@field Quickslot_32 number Quickslot 32 (Alt bar).
---@field Quickslot_33 number Quickslot 33 (Alt bar).
---@field Quickslot_34 number Quickslot 34 (Alt bar).
---@field Quickslot_35 number Quickslot 35 (Alt bar).
---@field Quickslot_36 number Quickslot 36 (Alt bar).
---@field Quickslot_37 number Quickslot 37 (Shift bar).
---@field Quickslot_38 number Quickslot 38 (Shift bar).
---@field Quickslot_39 number Quickslot 39 (Shift bar).
---@field Quickslot_4 number Quickslot 4 (Main bar).
---@field Quickslot_40 number Quickslot 40 (Shift bar).
---@field Quickslot_41 number Quickslot 41 (Shift bar).
---@field Quickslot_42 number Quickslot 42 (Shift bar).
---@field Quickslot_43 number Quickslot 43 (Shift bar).
---@field Quickslot_44 number Quickslot 44 (Shift bar).
---@field Quickslot_45 number Quickslot 45 (Shift bar).
---@field Quickslot_46 number Quickslot 46 (Shift bar).
---@field Quickslot_47 number Quickslot 47 (Shift bar).
---@field Quickslot_48 number Quickslot 48 (Shift bar).
---@field Quickslot_49 number Quickslot 49 (Extra bar 1).
---@field Quickslot_5 number Quickslot 5 (Main bar).
---@field Quickslot_50 number Quickslot 50 (Extra bar 1).
---@field Quickslot_51 number Quickslot 51 (Extra bar 1).
---@field Quickslot_52 number Quickslot 52 (Extra bar 1).
---@field Quickslot_53 number Quickslot 53 (Extra bar 1).
---@field Quickslot_54 number Quickslot 54 (Extra bar 1).
---@field Quickslot_55 number Quickslot 55 (Extra bar 1).
---@field Quickslot_56 number Quickslot 56 (Extra bar 1).
---@field Quickslot_57 number Quickslot 57 (Extra bar 1).
---@field Quickslot_58 number Quickslot 58 (Extra bar 1).
---@field Quickslot_59 number Quickslot 59 (Extra bar 1).
---@field Quickslot_6 number Quickslot 6 (Main bar).
---@field Quickslot_60 number Quickslot 60 (Extra bar 1).
---@field Quickslot_61 number Quickslot 61 (Extra bar 2).
---@field Quickslot_62 number Quickslot 62 (Extra bar 2).
---@field Quickslot_63 number Quickslot 63 (Extra bar 2).
---@field Quickslot_64 number Quickslot 64 (Extra bar 2).
---@field Quickslot_65 number Quickslot 65 (Extra bar 2).
---@field Quickslot_66 number Quickslot 66 (Extra bar 2).
---@field Quickslot_67 number Quickslot 67 (Extra bar 2).
---@field Quickslot_68 number Quickslot 68 (Extra bar 2).
---@field Quickslot_69 number Quickslot 69 (Extra bar 2).
---@field Quickslot_7 number Quickslot 7 (Main bar).
---@field Quickslot_70 number Quickslot 70 (Extra bar 2).
---@field Quickslot_71 number Quickslot 71 (Extra bar 2).
---@field Quickslot_72 number Quickslot 72 (Extra bar 2).
---@field Quickslot_8 number Quickslot 8 (Main bar).
---@field Quickslot_9 number Quickslot 9 (Main bar).
---@field QuickSlot_Chat number Quickslot Chat.
---@field QuickSlot_SkillMode number Quickslot Skill Mode.
---@field QuickslotPageDown number Quickslot Page Down.
---@field QuickslotPageUp number Quickslot Page Up.
---@field RaidPanel number Toggle Social Raid Panel.
---@field ReputationPanel number Toggle Reputation Panel.
---@field RightFellowshipManoeuvre number Fellowship Right Manoeuvre.
---@field SelectFellowFive number Select Fellow Five.
---@field SelectFellowFour number Select Fellow Four.
---@field SelectFellowOne number Select Fellow One.
---@field SelectFellowSix number Select Fellow Six.
---@field SelectFellowThree number Select Fellow Three.
---@field SelectFellowTwo number Select Fellow Two.
---@field SelectionAssist number Select Assist.
---@field SelectionNearestCreature number Select Nearest Creature.
---@field SelectionNearestFellow number Select Nearest Fellow.
---@field SelectionNearestFoe number Select Nearest Foe.
---@field SelectionNearestItem number Select Nearest Item.
---@field SelectionNearestPlayer number Select Nearest Player.
---@field SelectionNextCreature number Select Next Creature.
---@field SelectionNextFellow number Select Next Fellow.
---@field SelectionNextFoe number Select Next Foe.
---@field SelectionNextItem number Select Next Item.
---@field SelectionNextPlayer number Select Next Player.
---@field SelectionNextTracked number Select Next Tracked.
---@field SelectionOff number Select Off.
---@field SelectionPreviousCreature number Select Previous Creature.
---@field SelectionPreviousFellow number Select Previous Fellow.
---@field SelectionPreviousFoe number Select Previous Foe.
---@field SelectionPreviousItem number Select Previous Item.
---@field SelectionPreviousPlayer number Select Previous Player.
---@field SelectionPreviousTracked number Select Previous Tracked.
---@field SelectionSelf number Select Self.
---@field ShieldMark number Mark Target Shield.
---@field Show_Names number Show Names.
---@field ShowDamage number Show Damage.
---@field ShowRemoteQuestActions number Show Remote Quests.
---@field SkullMark number Mark Target Skull.
---@field SpearMark number Mark Target Spear.
---@field StarMark number Mark Target Star.
---@field Start_Command number Start Command.
---@field SunMark number Mark Target Sun.
---@field SwordsMark number Mark Target Sword.
---@field SystemMenu number Toggle System Menu.
---@field TitlesPanel number Toggle Titles Panel.
---@field ToggleAccomplishmentPanel number Toggle Accomplishment (Deeds) Panel.
---@field ToggleAlertOverflow number Toggle Alert Overflow.
---@field ToggleAssistancePanel number Toggle Assistance Panel.
---@field ToggleBag1 number Toggle the display of the first inventory bag.
---@field ToggleBag2 number Toggle the display of the second inventory bag.
---@field ToggleBag3 number Toggle the display of the third inventory bag.
---@field ToggleBag4 number Toggle the display of the fourth inventory bag.
---@field ToggleBag5 number Toggle the display of the fifth inventory bag.
---@field ToggleBag6 number Toggle the display of the sixth inventory bag.
---@field ToggleBags number Toggle the display of all inventory bags.
---@field ToggleBigBattlesUI number Toggle Big Battles UI.
---@field ToggleBioPanel number Toggle Bio Panel.
---@field ToggleCollectionUI number Toggle Collections UI.
---@field ToggleComboUI number Toggle Combo UI.
---@field ToggleCraftingPanel number Toggle Crafting Panel.
---@field ToggleCraftingProf1Panel number Toggle Crafting Proficiency 1 Panel.
---@field ToggleCraftingProf2Panel number Toggle Crafting Proficiency 2 Panel.
---@field ToggleCraftingProf3Panel number Toggle Crafting Proficiency 3 Panel.
---@field ToggleFilterUI number Toggle Filter UI.
---@field ToggleGambitPanel number Toggle Gambit Panel.
---@field ToggleHiddenDragBoxes number Toggle Hidden Drag Boxes.
---@field ToggleInputPanel number Toggle Input Panel.
---@field ToggleInstanceFinderPanel number Toggle Instance Finder Panel.
---@field ToggleItemAdvancementPanel number Toggle Item Advancement Panel.
---@field ToggleItemSellLock number Toggle Item Sell Lock.
---@field ToggleJournalPanel number Toggle Quest Journal Panel.
---@field ToggleMailUI number Toggle Mail UI.
---@field ToggleMithrilCoinsAuctionUI number Toggle Auction Panel.
---@field ToggleMithrilCoinsMenu number Toggle Mithril Coin Menu.
---@field ToggleMountedCombatUI number Toggle Mounted Combat UI.
---@field ToggleMountedXpUI number Toggle Mounted XP UI.
---@field ToggleMountsPanel number Toggle Mounts Panel.
---@field ToggleMusicMode number Music toggle mode.
---@field ToggleOptionsPanel number Toggle Options Panel.
---@field TogglePaperItemPanel number Toggle Wallet.
---@field TogglePendingLoot number Toggle Pending Loot.
---@field TogglePluginManager number Toggle Plugin Manager.
---@field TogglePluginManagerUI number Toggle Plugin Manager UI.
---@field TogglePVPPanel number Toggle PVP Panel.
---@field ToggleQuestJournal number Toggle Quest Journal.
---@field ToggleQuestPanel number Toggle Quest Panel.
---@field ToggleQuickslotLock number Quickslot Lock.
---@field ToggleRadar number Toggle Radar.
---@field ToggleRandomItemRewardUI number Toggle Item Reward UI.
---@field ToggleSkillPanel number Toggle Skill Panel.
---@field ToggleSkirmishPanel number Toggle Skirmish Panel.
---@field ToggleSocialFellowingPanel number Toggle Social Fellowing Panel.
---@field ToggleSocialPanel number Toggle Social Panel.
---@field ToggleStackDisplay number Toggle Vendor Stack Display.
---@field ToggleStatusbarPanel number Toggle Status Bar.
---@field ToggleThreatTrackerPanel number Toggle Threat Tracker.
---@field ToggleToolbar number Toggle Toolbar.
---@field ToggleToolbarPanel number Toggle Toolbar Panel.
---@field ToggleTraitPanel number Toggle Trait Panel.
---@field ToggleWebStore number Toggle Web Store.
---@field ToggleWorldJoin number Toggle World Join (Instance Finder).
---@field Tooltip_Detach number Detach tooltip.
---@field TopFellowshipManoeuvre number Fellowship Top Manoeuvre.
---@field TrackNearbyQuests number Track Nearby Quests.
---@field UI_Toggle number Toggle UI.
---@field Undefined number An undefined action.
---@field Use number Use.
---@field VendorFullStack number Toggle Vendor Full Stack Display.
---@field VendorQuantity number Toggle Vendor Quantity Display.
---@field VoiceChat_Talk number Chat Talk (Voice).
Turbine.UI.Lotro.Action = {}

---The list of available fonts.
---@class Turbine.UI.Lotro.Font
---@field Arial12 number Arial 12 point.
---@field BookAntiqua12 number BookAntiqua 12 point.
---@field BookAntiqua14 number BookAntiqua 14 point.
---@field BookAntiqua16 number BookAntiqua 16 point.
---@field BookAntiqua18 number BookAntiqua 18 point.
---@field BookAntiqua20 number BookAntiqua 20 point.
---@field BookAntiqua22 number BookAntiqua 22 point.
---@field BookAntiqua24 number BookAntiqua 24 point.
---@field BookAntiqua26 number BookAntiqua 26 point.
---@field BookAntiqua28 number BookAntiqua 28 point.
---@field BookAntiqua32 number BookAntiqua 32 point.
---@field BookAntiqua36 number BookAntiqua 36 point.
---@field BookAntiquaBold12 number BookAntiqua Bold 12 point.
---@field BookAntiquaBold14 number BookAntiqua Bold 14 point.
---@field BookAntiquaBold18 number BookAntiqua Bold 18 point.
---@field BookAntiquaBold19 number BookAntiqua Bold 19 point.
---@field BookAntiquaBold22 number BookAntiqua Bold 22 point.
---@field BookAntiquaBold24 number BookAntiqua Bold 24 point.
---@field FixedSys15 number FixedSys 15 point.
---@field LucidaConsole12 number LucidaConsole.
---@field TrajanPro13 number Trajan Pro 13 point.
---@field TrajanPro14 number Trajan Pro 14 point.
---@field TrajanPro15 number Trajan Pro 15 point.
---@field TrajanPro16 number Trajan Pro 16 point.
---@field TrajanPro18 number Trajan Pro 18 point.
---@field TrajanPro19 number Trajan Pro 19 point.
---@field TrajanPro20 number Trajan Pro 20 point.
---@field TrajanPro21 number Trajan Pro 21 point.
---@field TrajanPro23 number Trajan Pro 23 point.
---@field TrajanPro24 number Trajan Pro 24 point.
---@field TrajanPro25 number Trajan Pro 25 point.
---@field TrajanPro26 number Trajan Pro 26 point.
---@field TrajanPro28 number Trajan Pro 28 point.
---@field TrajanProBold16 number Trajan Pro Bold 16 point.
---@field TrajanProBold22 number Trajan Pro Bold 22 point.
---@field TrajanProBold24 number Trajan Pro Bold 24 point.
---@field TrajanProBold25 number Trajan Pro Bold 25 point.
---@field TrajanProBold30 number Trajan Pro Bold 30 point.
---@field TrajanProBold36 number Trajan Pro Bodl 36 point.
---@field Undefined number An undefined font.
---@field Verdana10 number Verdana 10 point.
---@field Verdana12 number Verdana 12 point.
---@field Verdana14 number Verdana 14 point.
---@field Verdana16 number Verdana 16 point.
---@field Verdana18 number Verdana 18 point.
---@field Verdana20 number Verdana 20 point.
---@field Verdana22 number Verdana 22 point.
---@field Verdana23 number Verdana 23 point.
---@field VerdanaBold16 number Verdana Bold 16 point.
Turbine.UI.Lotro.Font = {}

---Defines one of the shortcut types.
---@class Turbine.UI.Lotro.ShortcutType
---@field Alias number Specifies an alias shortcut.
---@field Hobby number Specifies a hobby shortcut.
---@field Item number Specifies an item shortcut.
---@field Pet number Specifies a pet shortcut.
---@field Skill number Specifies a skill shortcut.
---@field Undefined number Specifies an undefined shortcut.
Turbine.UI.Lotro.ShortcutType = {}

---Base item control for Lotro interface item classes.
---@class Turbine.UI.Lotro.BaseItemControl : Turbine.UI.Control
Turbine.UI.Lotro.BaseItemControl = {}

---A standard Lord of the Rings silver button.
---@class Turbine.UI.Lotro.Button : Turbine.UI.Button
Turbine.UI.Lotro.Button = {}

---A standard Lord of the Rings check box.
---@class Turbine.UI.Lotro.CheckBox : Turbine.UI.CheckBox
Turbine.UI.Lotro.CheckBox = {}

---Container for information about drag drop events.
---@class Turbine.UI.Lotro.DragDropInfo : Turbine.UI.DragDropInfo
Turbine.UI.Lotro.DragDropInfo = {}

---Gets the shortcut from the drag drop event.
---@return Turbine.UI.Lotro.Shortcut # Any shortcut information available from the drag drop event.
function Turbine.UI.Lotro.DragDropInfo:GetShortcut() end

---Provides a control for displaying an effect indicator.
---@class Turbine.UI.Lotro.EffectDisplay : Turbine.UI.Control
Turbine.UI.Lotro.EffectDisplay = {}

---Gets the effect displayed by the control.
---@return Turbine.Gameplay.Effect # The effect the control is displaying.
function Turbine.UI.Lotro.EffectDisplay:GetEffect() end

---Sets the effect displayed by the control.
---@param value Turbine.Gameplay.Effect The effect the control is displaying.
function Turbine.UI.Lotro.EffectDisplay:SetEffect(value) end

---A control for providing standard entity selection and context sensitive menu support.
---@class Turbine.UI.Lotro.EntityControl : Turbine.UI.Control
Turbine.UI.Lotro.EntityControl = {}

---A EquipmentSlot button for for equipping items.
---@class Turbine.UI.Lotro.EquipmentSlot : Turbine.UI.Lotro.BaseItemControl
---@field DragDrop fun(sender: table, args: table) Event fired when a drag drop operation is completed.
Turbine.UI.Lotro.EquipmentSlot = {}

---Gets the equipment slot visualized by this UI equipment slot.
---@return number # The equipment slot visualized by this UI equipment slot.
function Turbine.UI.Lotro.EquipmentSlot:GetEquipmentSlot() end

---Sets the equipment slot visualized by this UI equipment slot.
---@param value number The equipment slot visualized by this UI equipment slot.
function Turbine.UI.Lotro.EquipmentSlot:SetEquipmentSlot(value) end

---A standard Lord of the Rings gold button.
---@class Turbine.UI.Lotro.GoldButton : Turbine.UI.Lotro.Button
Turbine.UI.Lotro.GoldButton = {}

---A standard Lord of the Rings gold window.
---@class Turbine.UI.Lotro.GoldWindow : Turbine.UI.Lotro.Window
Turbine.UI.Lotro.GoldWindow = {}

---Provides a control for displaying an item.
---@class Turbine.UI.Lotro.ItemControl : Turbine.UI.Lotro.BaseItemControl
Turbine.UI.Lotro.ItemControl = {}

---Gets the item displayed by the control.
---@return Turbine.Gameplay.Item # The item the control is displaying.
function Turbine.UI.Lotro.ItemControl:GetItem() end

---Sets the item displayed by the control.
---@param value Turbine.Gameplay.Item The item the control is displaying.
function Turbine.UI.Lotro.ItemControl:SetItem(value) end

---Provides a control for displaying item information.
---@class Turbine.UI.Lotro.ItemInfoControl : Turbine.UI.Lotro.BaseItemControl
---@field EnabledChanged fun(sender: table, args: table) Event fired when the enabled state of the control changes.
Turbine.UI.Lotro.ItemInfoControl = {}

---Gets the item displayed by the control.
---@return Turbine.Gameplay.ItemInfo # The item the control is displaying.
function Turbine.UI.Lotro.ItemInfoControl:GetItemInfo() end

---Gets the quantity displayed.
---@return number # The quantity displayed.
function Turbine.UI.Lotro.ItemInfoControl:GetQuantity() end

---Sets the item displayed by the control.
---@param value Turbine.Gameplay.ItemInfo The item the control is displaying.
function Turbine.UI.Lotro.ItemInfoControl:SetItemInfo(value) end

---Gets the quantity displayed.
---@param value number The quantity displayed.
function Turbine.UI.Lotro.ItemInfoControl:SetQuantity(value) end

---Provides access to the built in game UIs.
---@class Turbine.UI.Lotro.LotroUI : Turbine.Object
Turbine.UI.Lotro.LotroUI = {}

---Gets a flag indicating if a game UI element is enabled.
---@param hudElement number The element to check the enabled state of.
---@return boolean
function Turbine.UI.Lotro.LotroUI.IsEnabled(hudElement) end

---Gets the position of an existing game UI element.
function Turbine.UI.Lotro.LotroUI.Reset() end

---Sets a flag indicating if a game UI element is enabled.
---@param hudElement number The element to get the enabled state of.
---@param value boolean The enabled state to set.
function Turbine.UI.Lotro.LotroUI.SetEnabled(hudElement, value) end

---The list of UIs that can be enabled or disabled.
---@class Turbine.UI.Lotro.LotroUIElement
Turbine.UI.Lotro.LotroUIElement = {}

---A quickslot button for using skills or items.
---@class Turbine.UI.Lotro.Quickslot : Turbine.UI.Control
---@field DragDrop fun(sender: table, args: table) Event fired when a drag drop operation is completed.
---@field ShortcutChanged fun(sender: table, args: table) Event fired when the shortcut changes.
Turbine.UI.Lotro.Quickslot = {}

---Gets the shortcut on the quickslot.
---@return Turbine.UI.Lotro.Shortcut # The shortcut info for the quickslot.
function Turbine.UI.Lotro.Quickslot:GetShortcut() end

---Gets whether right clicks will activate the quickslot.
---@return boolean # True if right mouse clicks will activate the quickslot.
function Turbine.UI.Lotro.Quickslot:IsUseOnRightClick() end

---Sets the shortcut on the quickslot.
---@param value Turbine.UI.Lotro.Shortcut The new shortcut infor to set the quickslot to use.
function Turbine.UI.Lotro.Quickslot:SetShortcut(value) end

---Sets whether right clicks will activate the quickslot.
---@param value boolean True if right mouse clicks will activate the quickslot.
function Turbine.UI.Lotro.Quickslot:SetUseOnRightClick(value) end

---A standard Lord of the Rings scroll bar.
---@class Turbine.UI.Lotro.ScrollBar : Turbine.UI.ScrollBar
---@field OrientationChanged fun(sender: table, args: table) Event fired when the orientation has changed.
Turbine.UI.Lotro.ScrollBar = {}

---Encapsulates information about a short cut.
---@class Turbine.UI.Lotro.Shortcut : Turbine.Object
Turbine.UI.Lotro.Shortcut = {}

---Gets the data associated with the shortcut.
---@return string # The shortcut data.
function Turbine.UI.Lotro.Shortcut:GetData() end

---Converts a Shortcut to an Item.
---@return Turbine.Gameplay.Item # The Item that was create from the shortcut or NIL if the shortcut was not a valid Item.
function Turbine.UI.Lotro.Shortcut:GetItem() end

---Gets the type of the shortcut.
---@return Turbine.UI.Lotro.ShortcutType # The shortcut type.
function Turbine.UI.Lotro.Shortcut:GetType() end

---Sets the data associated with the shortcut.
---@param value string The shortcut data.
function Turbine.UI.Lotro.Shortcut:SetData(value) end

---Sets the type of the shortcut.
---@param value Turbine.UI.Lotro.ShortcutType The new shortcut type.
function Turbine.UI.Lotro.Shortcut:SetType(value) end

---Initializes a new shortcut.
---@overload fun(type: Turbine.UI.Lotro.ShortcutType, data: string): Turbine.UI.Lotro.Shortcut
---@overload fun(item: Turbine.Gameplay.Item): Turbine.UI.Lotro.Shortcut
---@return Turbine.UI.Lotro.Shortcut
function Turbine.UI.Lotro.Shortcut() end

---A standard Lord of the Rings text box.
---@class Turbine.UI.Lotro.TextBox : Turbine.UI.TextBox
Turbine.UI.Lotro.TextBox = {}

---A standard Lord of the Rings silver window.
---@class Turbine.UI.Lotro.Window : Turbine.UI.Window
Turbine.UI.Lotro.Window = {}

---Gets if the window is resizable.
---@return boolean # True if the window can be resized.
function Turbine.UI.Lotro.Window:IsResizable() end

---Sets if the window is resizable.
---@param value boolean True if the window can be resized.
function Turbine.UI.Lotro.Window:SetResizable(value) end

---Sets the text of the window.
---@param value string The text of the window.
function Turbine.UI.Lotro.Window:SetText(value) end
