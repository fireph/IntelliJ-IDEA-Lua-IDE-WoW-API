---@class VoiceChat
C_VoiceChat = {}

---@param channelID number 
function C_VoiceChat.ActivateChannel(channelID) end

---@param listenToLocalUser bool 
function C_VoiceChat.BeginLocalCapture(listenToLocalUser) end

---@return bool canUseVoiceChat
function C_VoiceChat.CanPlayerUseVoiceChat() end

---@param channelDisplayName string 
---@return VoiceChatStatusCode status
function C_VoiceChat.CreateChannel(channelDisplayName) end

---@param channelID number 
function C_VoiceChat.DeactivateChannel(channelID) end

function C_VoiceChat.EndLocalCapture() end

---@return number|nil channelID
function C_VoiceChat.GetActiveChannelID() end

---@return ChatChannelType|nil channelType
function C_VoiceChat.GetActiveChannelType() end

---@return VoiceAudioDevice|nil inputDevices
function C_VoiceChat.GetAvailableInputDevices() end

---@return VoiceAudioDevice|nil outputDevices
function C_VoiceChat.GetAvailableOutputDevices() end

---@param channelID number 
---@return VoiceChatChannel|nil channel
function C_VoiceChat.GetChannel(channelID) end

---@param channelType ChatChannelType 
---@return VoiceChatChannel|nil channel
function C_VoiceChat.GetChannelForChannelType(channelType) end

---@param clubId string 
---@param streamId string 
---@return VoiceChatChannel|nil channel
function C_VoiceChat.GetChannelForCommunityStream(clubId, streamId) end

---@return CommunicationMode|nil communicationMode
function C_VoiceChat.GetCommunicationMode() end

---@return VoiceChatStatusCode statusCode
function C_VoiceChat.GetCurrentVoiceChatConnectionStatusCode() end

---@return number|nil volume
function C_VoiceChat.GetInputVolume() end

---@return VoiceChatMember|nil memberInfo
function C_VoiceChat.GetLocalPlayerActiveChannelMemberInfo() end

---@param channelID number 
---@return number|nil memberID
function C_VoiceChat.GetLocalPlayerMemberID(channelID) end

---@return number scale
function C_VoiceChat.GetMasterVolumeScale() end

---@param memberID number 
---@param channelID number 
---@return string memberGUID
function C_VoiceChat.GetMemberGUID(memberID, channelID) end

---@param channelID number 
---@param memberGUID string 
---@return number|nil memberID
function C_VoiceChat.GetMemberID(channelID, memberGUID) end

---@param memberID number 
---@param channelID number 
---@return VoiceChatMember|nil memberInfo
function C_VoiceChat.GetMemberInfo(memberID, channelID) end

---@param memberID number 
---@param channelID number 
---@return string|nil memberName
function C_VoiceChat.GetMemberName(memberID, channelID) end

---@param playerLocation table 
---@return number|nil volume
function C_VoiceChat.GetMemberVolume(playerLocation) end

---@return number|nil volume
function C_VoiceChat.GetOutputVolume() end

---@return bool|nil isPressed
function C_VoiceChat.GetPTTButtonPressedState() end

---@return VoiceChatProcess processes
function C_VoiceChat.GetProcesses() end

---@return string|nil keys
function C_VoiceChat.GetPushToTalkBinding() end

---@return number|nil sensitivity
function C_VoiceChat.GetVADSensitivity() end

---@param channelType ChatChannelType 
---@param clubId string @ [OPTIONAL]
---@param streamId string @ [OPTIONAL]
---@overload fun(channelType:ChatChannelType, streamId:string)
---@overload fun(channelType:ChatChannelType)
---@return bool isPending
function C_VoiceChat.IsChannelJoinPending(channelType, clubId, streamId) end

---@return bool|nil isDeafened
function C_VoiceChat.IsDeafened() end

---@return bool isEnabled
function C_VoiceChat.IsEnabled() end

---@return bool isLoggedIn
function C_VoiceChat.IsLoggedIn() end

---@param memberID number 
---@param channelID number 
---@return bool isLocalPlayer
function C_VoiceChat.IsMemberLocalPlayer(memberID, channelID) end

---@param playerLocation table 
---@return bool|nil mutedForMe
function C_VoiceChat.IsMemberMuted(playerLocation) end

---@param memberID number 
---@param channelID number 
---@return bool|nil mutedForAll
function C_VoiceChat.IsMemberMutedForAll(memberID, channelID) end

---@param memberID number 
---@param channelID number 
---@return bool|nil silenced
function C_VoiceChat.IsMemberSilenced(memberID, channelID) end

---@return bool|nil isMuted
function C_VoiceChat.IsMuted() end

---@return bool isParentalDisabled
function C_VoiceChat.IsParentalDisabled() end

---@return bool isParentalMuted
function C_VoiceChat.IsParentalMuted() end

---@param playerLocation table 
---@return bool isUsingVoice
function C_VoiceChat.IsPlayerUsingVoice(playerLocation) end

---@return bool|nil isSilenced
function C_VoiceChat.IsSilenced() end

---@param channelID number 
function C_VoiceChat.LeaveChannel(channelID) end

---@return VoiceChatStatusCode status
function C_VoiceChat.Login() end

---@return VoiceChatStatusCode status
function C_VoiceChat.Logout() end

--- Once the UI has enumerated all channels, use this to reset the channel discovery state, it will be updated again if appropriate
function C_VoiceChat.MarkChannelsDiscovered() end

---@param clubId string 
---@param streamId string 
function C_VoiceChat.RequestJoinAndActivateCommunityStreamChannel(clubId, streamId) end

---@param channelType ChatChannelType 
---@param autoActivate bool @ [OPTIONAL]
---@overload fun(channelType:ChatChannelType)
function C_VoiceChat.RequestJoinChannelByChannelType(channelType, autoActivate) end

---@param communicationMode CommunicationMode 
function C_VoiceChat.SetCommunicationMode(communicationMode) end

---@param isDeafened bool 
function C_VoiceChat.SetDeafened(isDeafened) end

---@param deviceID string 
function C_VoiceChat.SetInputDevice(deviceID) end

---@param volume number 
function C_VoiceChat.SetInputVolume(volume) end

---@param scale number 
function C_VoiceChat.SetMasterVolumeScale(scale) end

---@param playerLocation table 
---@param muted bool 
function C_VoiceChat.SetMemberMuted(playerLocation, muted) end

--- Adjusts member volume across all channels
---@param playerLocation table 
---@param volume number 
function C_VoiceChat.SetMemberVolume(playerLocation, volume) end

---@param isMuted bool 
function C_VoiceChat.SetMuted(isMuted) end

---@param deviceID string 
function C_VoiceChat.SetOutputDevice(deviceID) end

---@param volume number 
function C_VoiceChat.SetOutputVolume(volume) end

---@param textureObject table 
---@param memberID number 
---@param channelID number 
function C_VoiceChat.SetPortraitTexture(textureObject, memberID, channelID) end

---@param keys string 
function C_VoiceChat.SetPushToTalkBinding(keys) end

---@param sensitivity number 
function C_VoiceChat.SetVADSensitivity(sensitivity) end

--- Use this while loading to determine if the UI should attempt to rediscover the previously joined/active voice channels
---@return bool shouldDiscoverChannels
function C_VoiceChat.ShouldDiscoverChannels() end

function C_VoiceChat.ToggleDeafened() end

---@param playerLocation table 
function C_VoiceChat.ToggleMemberMuted(playerLocation) end

function C_VoiceChat.ToggleMuted() end

---@class CommunicationMode
local CommunicationMode = {}
CommunicationMode.PushToTalk = 0
CommunicationMode.OpenMic = 1

---@class VoiceChatStatusCode
local VoiceChatStatusCode = {}
VoiceChatStatusCode.Success = 0
VoiceChatStatusCode.OperationPending = 1
VoiceChatStatusCode.TooManyRequests = 2
VoiceChatStatusCode.LoginProhibited = 3
VoiceChatStatusCode.ClientNotInitialized = 4
VoiceChatStatusCode.ClientNotLoggedIn = 5
VoiceChatStatusCode.ClientAlreadyLoggedIn = 6
VoiceChatStatusCode.ChannelNameTooShort = 7
VoiceChatStatusCode.ChannelNameTooLong = 8
VoiceChatStatusCode.ChannelAlreadyExists = 9
VoiceChatStatusCode.AlreadyInChannel = 10
VoiceChatStatusCode.TargetNotFound = 11
VoiceChatStatusCode.Failure = 12
VoiceChatStatusCode.ServiceLost = 13
VoiceChatStatusCode.UnableToLaunchProxy = 14
VoiceChatStatusCode.ProxyConnectionTimeOut = 15
VoiceChatStatusCode.ProxyConnectionUnableToConnect = 16
VoiceChatStatusCode.ProxyConnectionUnexpectedDisconnect = 17
VoiceChatStatusCode.Disabled = 18
VoiceChatStatusCode.UnsupportedChatChannelType = 19
VoiceChatStatusCode.InvalidCommunityStream = 20
VoiceChatStatusCode.PlayerSilenced = 21
VoiceChatStatusCode.PlayerVoiceChatParentalDisabled = 22
VoiceChatStatusCode.InvalidInputDevice = 23
VoiceChatStatusCode.InvalidOutputDevice = 24

---@class VoiceAudioDevice
---@field deviceID string 
---@field displayName string 
---@field power number 
---@field isActive bool 
---@field isSystemDefault bool 
local VoiceAudioDevice = {}

---@class VoiceChatChannel
---@field name string 
---@field channelID number 
---@field channelType ChatChannelType 
---@field clubId string 
---@field streamId string 
---@field volume number 
---@field isActive bool 
---@field isMuted bool 
---@field isTransmitting bool 
---@field isLocalProcess bool 
---@field members table 
local VoiceChatChannel = {}

---@class VoiceChatMember
---@field energy number 
---@field memberID number 
---@field isActive bool 
---@field isSpeaking bool 
---@field isMutedForAll bool 
---@field isSilenced bool 
local VoiceChatMember = {}

---@class VoiceChatProcess
---@field name string 
---@field channels table 
local VoiceChatProcess = {}

