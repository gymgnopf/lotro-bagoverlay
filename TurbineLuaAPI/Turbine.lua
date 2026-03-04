-- Turbine API -- Core namespace (Turbine.*)
-- Auto-generated from Standing Stone Games Turbine API documentation.
-- Use with lua-language-server for Zed editor autocomplete.

-- Namespace declaration (makes this namespace visible in autocomplete)
Turbine = {}

---Defines the type of chat data.
---@class Turbine.ChatType
---@field Admin number Specifies the Admin chat type.
---@field Advancement number Specifies the Advancement chat type.
---@field Death number Specifies the Death chat type.
---@field Emote number Specifies the Emote chat type.
---@field EnemyCombat number Specifies the Enemy Combat chat type.
---@field Error number Specifies the Error chat type.
---@field FellowLoot number Specifies the Fellow Loot chat type.
---@field Fellowship number Specifies the Fellowship chat type.
---@field Kinship number Specifies the Kinship chat type.
---@field LFF number Specifies the LFF chat type.
---@field Localized1 number Specifies the first Localized chat type.
---@field Localized2 number Specifies the second Localized chat type.
---@field Narration number Specifies the Narration chat type.
---@field Officer number Specifies the Officer chat type.
---@field OOC number Specifies the OOC chat type.
---@field PlayerCombat number Specifies the Player Combat chat type.
---@field Quest number Specifies the Quest chat type.
---@field Raid number Specifies the Raid chat type.
---@field Regional number Specifies the Regional chat type.
---@field Roleplay number Specifies the Roleplay chat type.
---@field Say number Specifies the Say chat type.
---@field SelfLoot number Specifies the Self Loot chat type.
---@field Standard number Specifies the Standard chat type.
---@field Tell number Specifies the Tell chat type.
---@field Trade number Specifies the Trade chat type.
---@field Tribe number Specifies the Tribe chat type.
---@field Undef number Specifies the Undef chat type.
---@field Unfiltered number Specifies the Unfiltered chat type.
---@field UserChat1 number Specifies the UserChat1 chat type.
---@field UserChat2 number Specifies the UserChat2 chat type.
---@field UserChat3 number Specifies the UserChat3 chat type.
---@field UserChat4 number Specifies the UserChat4 chat type.
---@field UserChat5 number Specifies the UserChat5 chat type.
---@field UserChat6 number Specifies the UserChat6 chat type.
---@field UserChat7 number Specifies the UserChat7 chat type.
---@field UserChat8 number Specifies the UserChat8 chat type.
---@field World number Specifies the World chat type.
Turbine.ChatType = {}

---Defines the scope of plugin data.
---@class Turbine.DataScope
---@field Account number Specifies account plugin data.
---@field Character number Specifies character plugin data.
---@field Server number Specifies server plugin data.
Turbine.DataScope = {}

---Defines the client languages.
---@class Turbine.Language
---@field English number English.
---@field EnglishGB number English GB.
---@field French number French.
---@field German number German.
---@field Invalid number Invalid.
---@field Russian number Russian - deprecated.
Turbine.Language = {}

---This class provides events for when messages are received through the game.
---This includes player chat, tells, in game messages, and announcements.
---@class Turbine.Chat : Turbine.Object
---@field Received fun(sender: table, args: table) This event is fired whenever a chat message is received.
Turbine.Chat = {}

---Provides engine level information to user plugins.
---@class Turbine.Engine
Turbine.Engine = {}

---Gets the current callstack.
---@param arguments any
---@return string # The current callstack.
function Turbine.Engine.GetCallStack(arguments) end

---Gets the current date.
---@return Object # Returns a table containing information about the current date. The following fields are available: Year, Month, Day, Hour, Minute, Second, DayOfWeek, DayOfYear, and IsDST.
function Turbine.Engine.GetDate() end

---Gets the current relative game time.
---@return number # Returns a relative game time in seconds.
function Turbine.Engine.GetGameTime() end

---Gets the language the client is using.
---@return number # The language the client is using.
function Turbine.Engine.GetLanguage() end

---Gets the number of seconds since 1/1/1970.
---@return number # The number of seconds since 1/1/1970.
function Turbine.Engine.GetLocalTime() end

---Gets a string identify the locale the application is set to.
---@return string # The locale identifier.
function Turbine.Engine.GetLocale() end

---Gets the major and minor versions numbers for the Lua script system.
---@return number, number
function Turbine.Engine.GetScriptVersion() end

---Logs a message to the script log.
---@param message string The message to log.
function Turbine.Engine.ScriptLog(message) end

---Provides access to plugin management methods.
---@class Turbine.LotroPluginManager : Turbine.PluginManager
Turbine.LotroPluginManager = {}

---Displays the options panel for the specified plugin.
---@param plugin Turbine.Plugin
function Turbine.LotroPluginManager.ShowOptions(plugin) end

---The base object class for API classes.
---@class Turbine.Object
Turbine.Object = {}

---Provides information about a specific plugin that has been loaded.
---@class Turbine.Plugin : Turbine.Object
---@field Load fun(sender: table, args: table) Event fired when a plugin's main package has finished loading.
---@field Unload fun(sender: table, args: table) Event fired before a plugin is unloaded.
Turbine.Plugin = {}

---Gets the author of the plugin.
---@return string # The author of the plugin.
function Turbine.Plugin:GetAuthor() end

---Gets the plugin configuration information.
---@return Object # The plugin's configuration.
function Turbine.Plugin:GetConfiguration() end

---Gets the name of the plugin.
---@return string # The name of the plugin.
function Turbine.Plugin:GetName() end

---Gets the version of the plugin.
---@return string # The version of the plugin.
function Turbine.Plugin:GetVersion() end

---Provides the ability to save and load plugin data.
---@class Turbine.PluginData
Turbine.PluginData = {}

---Loads plugin data from a given key.
---@param dataScope number The scope of the data. Data scope can be specified to an Account, a Server, or to a specific Character.
---@param key string The key the data is stored under.
---@param dataLoadEventHandler Object A function that is called when the data loaded.
---@return Object # The loaded data. If the data does not exist, this will simply return nil.
function Turbine.PluginData.Load(dataScope, key, dataLoadEventHandler) end

---Saves plugin data under a given key.
---@param dataScope number The scope of the data. This specifies the level of availability of this data when loading. Data scope can be specified to an Account, a Server, or to a specific Character.
---@param key string The key to store the data under.
---@param data Object The data to save.
---@param saveCompleteEventHandler Object Event handler called when the data is saved. It has two arguments, the first specifies if the save succeeded and the second is a message if it failed.
function Turbine.PluginData.Save(dataScope, key, data, saveCompleteEventHandler) end

---Provides access to plugin management methods.
---@class Turbine.PluginManager
Turbine.PluginManager = {}

---Gets the plugins that are currently available.
---@return Object # Returns a table containing the plugins that are currently available.
function Turbine.PluginManager.GetAvailablePlugins() end

---Gets the plugins that are currently loaded.
---@return Object # Returns a table containing the currently loaded plugins
function Turbine.PluginManager.GetLoadedPlugins() end

---Loads the plugin that is requested.
---@param pluginName string The name of the plugin to load as specified in its plugin definition file.
function Turbine.PluginManager.LoadPlugin(pluginName) end

---Refreshes the list of available plugins.
function Turbine.PluginManager.RefreshAvailablePlugins() end

---Unloads the script state specified.
---@param scriptState string The name of the script state to be unloaded.
function Turbine.PluginManager.UnloadScriptState(scriptState) end

---Provides programmer extensibility to the chat window.
---@class Turbine.Shell
Turbine.Shell = {}

---Adds a command that can be executed.
---@param name string The name of the command that can be execute. Multiple names can be specified by separating them using a semicolon ';'.
---@param shellCommand Turbine.ShellCommand The shell command to bind to the names.
---@return number # The number of names from the name argument that were successful registered.
function Turbine.Shell.AddCommand(name, shellCommand) end

---Gets the list of commands available by the shell.
---@return string # The list of available commands that can be executed.
function Turbine.Shell.GetCommands() end

---Test if the specified name is a registered shell command.
---@param name string The name of the command to check for the existence of.
---@return boolean # True if the command is registered.
function Turbine.Shell.IsCommand(name) end

---Removes a command that has been added using AddCommand.
---@param shellCommand Turbine.ShellCommand The shell command to unregister. This removes the registration from all the names that use the shell command.
---@return number
function Turbine.Shell.RemoveCommand(shellCommand) end

---Writes a line of text to the chat window.
---@param text string The text to display.
function Turbine.Shell.WriteLine(text) end

---A command that can be register for use in the chat window.
---@class Turbine.ShellCommand
Turbine.ShellCommand = {}

---Executes the command.
---@param argumentText string The arguments string passed along with the command.
function Turbine.ShellCommand:Execute(argumentText) end

---Gets the help information for the command.
---@return string # The help information for the command.
function Turbine.ShellCommand:GetHelp() end

---Gets a short help string for the command.
---@return string # A short help string for the command.
function Turbine.ShellCommand:GetShortHelp() end
