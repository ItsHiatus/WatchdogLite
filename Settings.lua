--!strict
export type List = {[number] : string}
export type Data = {[any] : any}
export type DataDict = {[string] : Data}
export type User = Player | number
export type LogCategory = "Notes" | "Bans" | "Kicks"
export type Subscription = "UpdateMods" | "KickPlayer"

type Date = string | {
	day : number,
	hour : number,
	isdst : boolean,
	min : number,
	month : number,
	sec : number,
	wday : number,
	yday : number,
	year : number
}

export type Note = {
	Date : Date,
	Note : string,
	Moderator : string,
	Server : string,
	Traceback :string,
}

return {
	-- Watchdog Settings
	DefaultMods = {
		[-1] = "Server", -- id -1 is reserved for game
		[12545525] = "Im_Hiatus", -- put your id and name like this
	},
	
	LogCategories = {
		"notes", "kicks", "bans"
	},
	
	KickMessageFormats = {
		error = "\n%s. \n(If this problem persists, please contact support)",
		sus = "Suspicious activity detected: %s.",
		none = "%s"
	},
	
	DefaultReasons = {
		Kick = "None",
		Ban = "None",
		Unban = "None"
	},
	
	TimeIntervals = { -- duration : seconds
		{Value = 604800, Name = "weeks"},
		{Value = 86400, Name = "days"},
		{Value = 3600, Name = "hrs"},
		{Value = 60, Name = "mins"},
		{Value = 0, Name = "secs"},
	},
	
	ClientErrorMessages = {
		INVALID_KEY = "Please provide a valid key!",
		INVALID_TOPIC = "Please provide a valid topic to publish to!",
		INVALID_USER = "Please provide a valid Player or UserId!",
		INVALID_USERID = "Please provide a valid UserId!",
		INVALID_MOD = "%s does not have mod perms!",
		INVALID_MOD_TARGET = "%s is already a mod!",
		INVALID_UNMOD_TARGET = "%s is a default mod! They cannot be removed with this function.",
		INVALID_NOTE = "Please provide a valid note!",
		INVALID_BAN_DURATION = "Please provide a valid duration (seconds)!",
		INVALID_UNBAN_TARGET = "Player is already unbanned!",
		INVALID_LOG_CATEGORY = "Please provide a valid log category! (notes/kicks/bans)",
		INVALID_LOG_NUMBER = "Please provide a valid log number!",
		INVALID_NOTE_NUMBER = "Please provide a valid note id!",
		INVALID_REASON = "Please provide a valid reason!",
		INVALID_DURATION = "Please provide a valid ban duration. Duration is in seconds (-1 for indefinite bans)",
		
		INVALID_CMD = "Could not find command %s",
		INVALID_TARGET = "Please provide a valid target (UserId or Name of a player in the server)!",
		INVALID_SINGLE_TARGET = "More than one target found with name %s!",
	},
}
