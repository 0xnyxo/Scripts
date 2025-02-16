local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local player = game:GetService("Players").LocalPlayer

-- Create the Window with User ID added to Subtitle
local Window = Fluent:CreateWindow({
    Title = "Vyxon Hub |",
    SubTitle = "Legends Of Speed - User ID: " .. player.UserId,  -- Add User ID to subtitle
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 280),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Add Tabs
local Tabs = {
    Main = Window:AddTab({Title = "Main", Icon = "home"}),
    Rebirth = Window:AddTab({Title = "Rebirth", Icon = "refresh-cw"}),
    Pets = Window:AddTab({Title = "Pets", Icon = "lucide-gem"}),
    Collect = Window:AddTab({Title = "Collect", Icon = "shovellucide-"}),
    Teleport = Window:AddTab({Title = "Teleport", Icon = "lucide-arrow-left-right"})
}

local Options = Fluent.Options

-- Main Section
local MainSection = {}
MainSection = class(function(self)
    self.walkSpeedSlider = Tabs.Main:AddSlider("WalkSpeed", {Title = "Walk Speed", Min = 0, Max = 1000, Default = 200})
    self.jumpPowerSlider = Tabs.Main:AddSlider("JumpPower", {Title = "Jump Power", Min = 0, Max = 200, Default = 50})
    self.autoRaceToggle = Tabs.Main:AddToggle("Auto Race", {Title = "Enable Auto Race", Default = false})
    self.gamePassToggle = Tabs.Main:AddToggle("Auto Game Passes", {Title = "Grant All Game Passes", Default = false})
    self:initializeWalkSpeedAndJumpPower()
    self:initializeAutoRace()
    self:initializeAutoGamePasses()
end)

MainSection.initializeWalkSpeedAndJumpPower = function(self)
    self.walkSpeedSlider:OnChanged(function(value)
        player.Character.Humanoid.WalkSpeed = value
    end)
    self.jumpPowerSlider:OnChanged(function(value)
        player.Character.Humanoid.JumpPower = value
    end)
end

MainSection.initializeAutoRace = function(self)
    self.autoRaceToggle:OnChanged(function()
        if Options["Auto Race"].Value then
            task.spawn(self.autoRaceLogic)
        end
    end)
end

MainSection.autoRaceLogic = function(self)
    while Options["Auto Race"].Value do
        local raceTimer = game:GetService("ReplicatedStorage").raceTimer
        local raceStarted = game:GetService("ReplicatedStorage").raceStarted
        if raceTimer.Value == 0 and raceStarted.Value then
            local currentMap = player.currentMap.Value
            if currentMap == "Desert Race" then
                player.Character.HumanoidRootPart.CFrame = workspace.raceMaps.Desert.finishPart.CFrame
            elseif currentMap == "Grass Race" then
                player.Character.HumanoidRootPart.CFrame = workspace.raceMaps.Grassland.finishPart.CFrame
            elseif currentMap == "Magma Race" then
                player.Character.HumanoidRootPart.CFrame = workspace.raceMaps.Magma.finishPart.CFrame
            end
        end
        wait(1)
    end
end

MainSection.initializeAutoGamePasses = function(self)
    self.gamePassToggle:OnChanged(function()
        if Options["Auto Game Passes"].Value then
            self:grantAllGamePasses()
        end
    end)
end

MainSection.grantAllGamePasses = function(self)
    local gamepassFolder = game:GetService("ReplicatedStorage"):WaitForChild("GamepassIds")
    local ownedGamepassesFolder = player:FindFirstChild("ownedGamepasses")
    if not ownedGamepassesFolder then
        ownedGamepassesFolder = Instance.new("Folder")
        ownedGamepassesFolder.Name = "ownedGamepasses"
        ownedGamepassesFolder.Parent = player
    end
    for _, gamepass in pairs(gamepassFolder:GetChildren()) do
        local gamepassClone = gamepass:Clone()
        gamepassClone.Parent = ownedGamepassesFolder
    end
end

-- Rebirth Section
local RebirthSection = {}
RebirthSection = class(function(self)
    self.rebirthRemote = game:GetService("ReplicatedStorage"):WaitForChild("rEvents").rebirthEvent
    self:initializeRebirthButton()
end)

RebirthSection.initializeRebirthButton = function(self)
    Tabs.Rebirth:AddToggle({
        Title = "Rebirth Now", 
        Default = false, 
        Callback = function()
            if Options["Rebirth Now"].Value then
                self.rebirthRemote:FireServer("rebirthRequest")
            end
        end
    })
end

-- Collect Section
local CollectSection = {}
CollectSection = class(function(self)
    self.collectToggle = Tabs.Collect:AddToggle("Auto Collect Orbs", {Title = "Enable Auto Collect Orbs", Default = false})
    self.fastGainToggle = Tabs.Collect:AddToggle("Fast Gain", {Title = "Enable Fast Gain (All except gems)", Default = false})
    self.orbDropdown = Tabs.Collect:AddDropdown("SelectOrb", {Title = "Select Orb to Collect", Values = {"Gem", "Yellow Orb", "Blue Orb", "Orange Orb", "Red Orb"}, Multi = false, Default = 1})
    self:initializeCollectToggle()
    self:initializeFastGainToggle()
end)

CollectSection.initializeCollectToggle = function(self)
    self.collectToggle:OnChanged(function()
        if Options["Auto Collect Orbs"].Value then
            local orb = self.orbDropdown:GetValue()
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", orb, "City")
        end
    end)
end

CollectSection.initializeFastGainToggle = function(self)
    self.fastGainToggle:OnChanged(function()
        if Options["Fast Gain"].Value then
            local orbsToCollect = {"Yellow Orb", "Blue Orb", "Orange Orb", "Red Orb"}
            for _, orb in ipairs(orbsToCollect) do
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", orb, "City")
            end
        end
    end)
end

-- Pets Section
local PetsSection = {}
PetsSection = class(function(self)
    self.petRarityDropdown = Tabs.Pets:AddDropdown("PetRarity", {Title = "Select Pet Rarity", Values = {"Basic", "Advanced", "Rare", "Epic", "Unique", "Omega"}, Multi = false, Default = 1})
    self.petListBox = Tabs.Pets:AddListbox("PetList", {Title = "Available Pets", Description = "This will show the pets based on your selected rarity."})
    self:initializePetRarityDropdown()
end)

PetsSection.initializePetRarityDropdown = function(self)
    local petNames = {
        Omega = {"Dark Soul Birdie", "Eternal Nebula Dragon", "Hypersonic Pegasus", "Shadows Edge Kitty", "Soul Fusion Dog", "Ultimate Overdrive Bunny", "Swift Samurai"},
        Unique = {"Flaming Hedgehog", "Golden Viking", "Speedy Sensei", "Maestro Dog"},
        Basic = {"Red Bunny", "Red Kitty", "Blue Bunny", "Silver Dog", "Yellow Squeak"},
        Epic = {"Green Firecaster", "White Phoenix", "Blue Firecaster", "Red Phoenix", "Red Firecaster", "Golden Phoenix", "Divine Pegasus"},
        Rare = {"Purple Pegasus", "Orange Falcon", "Golden Angel", "Orange Pegasus"},
        Advanced = {"Green Vampy", "Dark Golem", "Pink Butterfly", "Yellow Butterfly", "Green Golem"}
    }

    self.petRarityDropdown:OnChanged(function(value)
        local pets = petNames[value] or {}
        self.petListBox:ClearItems()
        for _, pet in ipairs(pets) do
            self.petListBox:AddItem(pet)
        end
    end)
end

-- Teleport Section
local TeleportSection = {}
TeleportSection = class(function(self)
    self.teleportSnowToMysteriousButton = Tabs.Teleport:AddToggle({
        Title = "Snow City", 
        Default = false, 
        Callback = function()
            if Options["Snow City"].Value then
                game:GetService("ReplicatedStorage").rEvents.areaTravelRemote:InvokeServer("travelToArea", workspace.areaCircles.snowCityToMysteriousCave)
            end
        end
    })
    self.teleportMagmaToElectroButton = Tabs.Teleport:AddToggle({
        Title = "Magma City", 
        Default = false, 
        Callback = function()
            if Options["Magma City"].Value then
                game:GetService("ReplicatedStorage").rEvents.areaTravelRemote:InvokeServer("travelToArea", workspace.areaCircles.magmaCityToElectroCave)
            end
        end
    })
    self.teleportInfernoToMagmaButton = Tabs.Teleport:AddToggle({
        Title = "Inferno Cave", 
        Default = false, 
        Callback = function()
            if Options["Inferno Cave"].Value then
                game:GetService("ReplicatedStorage").rEvents.areaTravelRemote:InvokeServer("travelToArea", workspace.areaCircles.infernoCaveToMagmaCity)
            end
        end
    })
    self.teleportJungleToCaveButton = Tabs.Teleport:AddToggle({
        Title = "Jungle", 
        Default = false, 
        Callback = function()
            if Options["Jungle to Jungle Cave"].Value then
                game:GetService("ReplicatedStorage").rEvents.areaTravelRemote:InvokeServer("travelToArea", workspace.areaCircles.speedJungleToJunglecave)
            end
        end
    })
end)

-- Initialize Vyxon Hub
local function InitializeVyxonHub()
    local mainSection = MainSection.new()
    local rebirthSection = RebirthSection.new()
    local collectSection = CollectSection.new()
    local petsSection = PetsSection.new()
    local teleportSection = TeleportSection.new()

    -- Additional Pet actions
    Tabs.Pets:AddToggle({
        Title = "Buy Pet", 
        Default = false, 
        Callback = function() petsSection:buyPet() end
    })
    Tabs.Pets:AddToggle({
        Title = "Sell Pet", 
        Default = false, 
        Callback = function() petsSection:sellPet() end
    })
end

InitializeVyxonHub()

-- Notify that the script has loaded
Window:SelectTab(1)
Fluent:Notify({
    Title = "Vyxon Hub",
    Content = "Legends Of Speed script has successfully loaded.",
    Duration = 8
})
