--[[
  __     __                       _   _       _                        
  \ \   / /   ___  _____  _ __   | | | |_   _| |__                     
   \ \ / / | | \ \/ / _ \| '_ \  | |_| | | | | '_ \                    
    \ V /| |_| |>  < (_) | | | | |  _  | |_| | |_) |                   
   __\_/_ \__, /_/\_\___/|_| |_| |_| |_|\__,_|_.__/              _     
  |  \/  ||___/ ___  ___| | ___  | |    ___  __ _  ___ _ __   __| |___ 
  | |\/| | | | / __|/ __| |/ _ \ | |   / _ \/ _` |/ _ \ '_ \ / _` / __|
  | |  | | |_| \__ \ (__| |  __/ | |__|  __/ (_| |  __/ | | | (_| \__ \
  |_|  |_|\__,_|___/\___|_|\___| |_____\___|\__, |\___|_| |_|\__,_|___/
                                            |___/                      
    Created by Vyxon (aka @0xnyxo on Discord)
    Made with Love <3
]]

local allowedUserIds = {1178510017,1179279665,7377110745,2729674132}
local player = game:GetService("Players").LocalPlayer
local function checkAuthorization()
	for _, userId in ipairs(allowedUserIds) do
		if (player.UserId == userId) then
			return true
		end
	end
	return false
end
if checkAuthorization() then
	local FlatIdent_61538 = 0
	local Fluent
	local SaveManager
	local Window
	local Tabs
	local RedColor
	local AutoStuffMain = Tabs.Main:AddSection("Auto Stuff")
	local PlayerSettingsMain = Tabs.AutoFarm:AddSection("Player Settings")
	local LocalPlayerMain = Tabs.AutoFarm:AddSection("LocalPlayer")
	local OtherStuffMain = Tabs.AutoFarm:AddSection("Other")
	local AutoStuffFarm = Tabs.AutoFarm:AddSection("Auto Stuff")
	local CustomizeFarm = Tabs.AutoFarm:AddSection("Customize")
	local OtherStuffFarm = Tabs.AutoFarm:AddSection("Other")
	local AutoStuffKiller = Tabs.Killer:AddSection("Auto Stuff")
	local RangeStuffKiller = Tabs.Killer:AddSection("Range Stuff")
	local WhitelistKiller = Tabs.Killer:AddSection("Whitelist")
	local AutoStuffRebirths = Tabs.AutoRebirth:AddSection("Auto Stuff")
	local CustomizeRebirthInput = Tabs.AutoRebirth:AddSection("Customize")
	local FastRebirths = Tabs.AutoRebirth:AddSection("Fast Rebirths")
	local CustomFastRebirth = Tabs.AutoRebirth:AddSection("Custom Fast Rebirths")
	local AntiStuffRebirths = Tabs.AutoRebirth:AddSection("Anti Stuff")
	local AutoStuffFarm = Tabs.Crystals:AddSection("Auto Stuff")
	local RemoveStatsFrames = Tabs.Visual:AddSection("Stats")
	local VisualStuff = Tabs.Visual:AddSection("Visual Stuff")
	local optimizerOthersTab = Tabs.Other:AddSection("Optimizer")
	while true do
		if (3 == FlatIdent_61538) then
			do
				local AutoLiftToggle = AutoStuffMain:AddToggle("AutoLiftToggle", {Title="Auto Lift",Description="Automatically Lifts, works for all Machines!",Default=false,BackgroundColor=Color3.fromRGB(255, 0, 0)})
				AutoLiftToggle:OnChanged(function()
					local FlatIdent_2BD95 = 0
					local Players
					local LocalPlayer
					local autoLiftValue
					while true do
						if (FlatIdent_2BD95 == 1) then
							autoLiftValue = LocalPlayer:FindFirstChild("autoLiftEnabled")
							if autoLiftValue then
								if AutoLiftToggle.Value then
									autoLiftValue.Value = true
									AutoLiftToggle.BackgroundColor = RedColor
								else
									local FlatIdent_60EA1 = 0
									while true do
										if (FlatIdent_60EA1 == 0) then
											autoLiftValue.Value = false
											AutoLiftToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
											break
										end
									end
								end
							end
							break
						end
						if (FlatIdent_2BD95 == 0) then
							Players = game:GetService("Players")
							LocalPlayer = Players.LocalPlayer
							FlatIdent_2BD95 = 1
						end
					end
				end)
				local RepTimeToggle = OtherStuffFarm:AddToggle("RepTimeToggle", {Title="Fast Rep",Description="Applies Fast Repetition for all Machines",Default=false})
				RepTimeToggle:OnChanged(function()
					local FlatIdent_31A5A = 0
					local updateRepTimeValues
					while true do
						if (FlatIdent_31A5A == 1) then
							updateRepTimeValues()
							break
						end
						if (FlatIdent_31A5A == 0) then
							updateRepTimeValues = nil
							function updateRepTimeValues()
								for _, obj in ipairs(game:GetDescendants()) do
									if (obj:IsA("NumberValue") and (obj.Name == "repTime")) then
										if RepTimeToggle.Value then
											obj.Value = 0
											RepTimeToggle.BackgroundColor = RedColor
										else
											local FlatIdent_31905 = 0
											while true do
												if (0 == FlatIdent_31905) then
													obj.Value = 1
													RepTimeToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
													break
												end
											end
										end
									end
								end
							end
							FlatIdent_31A5A = 1
						end
					end
				end)
				local AutoEatProteinToggle = AutoStuffMain:AddToggle("AutoEatProteinToggle", {Title="Auto Eat Protein Egg",Description="Automatically eats one Egg every 30 minutes",Default=false})
				local scheduledTask
				AutoEatProteinToggle:OnChanged(function()
					if AutoEatProteinToggle.Value then
						local player = game.Players.LocalPlayer
						local character = player.Character or player.CharacterAdded:Wait()
						local function equipAndUseProteinEgg()
							local backpack = player:FindFirstChild("Backpack")
							local proteinEggTool = backpack and backpack:FindFirstChild("Protein Egg")
							if proteinEggTool then
								local FlatIdent_51F42 = 0
								local proteinEgg
								while true do
									if (FlatIdent_51F42 == 0) then
										character:WaitForChild("Humanoid"):EquipTool(proteinEggTool)
										proteinEgg = workspace:FindFirstChild(player.Name) and workspace[player.Name]:FindFirstChild("Protein Egg")
										FlatIdent_51F42 = 1
									end
									if (FlatIdent_51F42 == 1) then
										if proteinEgg then
											local FlatIdent_E652 = 0
											while true do
												if (0 == FlatIdent_E652) then
													player.muscleEvent:FireServer("proteinEgg", proteinEgg)
													scheduledTask = task.delay(1800, equipAndUseProteinEgg)
													break
												end
											end
										else
											warn("Protein Egg object not found in Workspace!")
										end
										break
									end
								end
							else
								warn("Protein Egg tool not found in Backpack!")
							end
						end
						equipAndUseProteinEgg()
						AutoEatProteinToggle.BackgroundColor = RedColor
					else
						if scheduledTask then
							task.cancel(scheduledTask)
						end
						AutoEatProteinToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local AutoTropicalShakeToggle = AutoStuffMain:AddToggle("AutoTropicalShakeToggle", {Title="Auto Eat Tropical Shake",Description="Automatically eats Tropical Shake each 30min",Default=false})
				AutoTropicalShakeToggle:OnChanged(function()
					if AutoTropicalShakeToggle.Value then
						local FlatIdent_27957 = 0
						local player
						local character
						local equipTropicalShake
						local fireTropicalShakeEvent
						local runEvery30Minutes
						while true do
							if (0 == FlatIdent_27957) then
								player = game.Players.LocalPlayer
								character = player.Character or player.CharacterAdded:Wait()
								FlatIdent_27957 = 1
							end
							if (FlatIdent_27957 == 2) then
								fireTropicalShakeEvent = nil
								function fireTropicalShakeEvent()
									local FlatIdent_6A83E = 0
									local tropicalShake
									while true do
										if (FlatIdent_6A83E == 0) then
											tropicalShake = workspace:FindFirstChild(player.Name) and workspace[player.Name]:FindFirstChild("Tropical Shake")
											if tropicalShake then
												local FlatIdent_2D2B8 = 0
												while true do
													if (FlatIdent_2D2B8 == 0) then
														game:GetService("Players").LocalPlayer.muscleEvent:FireServer("tropicalShake", tropicalShake)
														print("muscleEvent fired with Tropical Shake!")
														break
													end
												end
											else
												warn("Tropical Shake object not found in Workspace!")
											end
											break
										end
									end
								end
								FlatIdent_27957 = 3
							end
							if (FlatIdent_27957 == 4) then
								spawn(runEvery30Minutes)
								AutoTropicalShakeToggle.BackgroundColor = RedColor
								break
							end
							if (FlatIdent_27957 == 3) then
								runEvery30Minutes = nil
								function runEvery30Minutes()
									while AutoTropicalShakeToggle.Value do
										local FlatIdent_E0D0 = 0
										while true do
											if (FlatIdent_E0D0 == 0) then
												equipTropicalShake()
												fireTropicalShakeEvent()
												FlatIdent_E0D0 = 1
											end
											if (FlatIdent_E0D0 == 1) then
												print("Waiting for 30 minutes before the next execution...")
												task.wait(1800)
												break
											end
										end
									end
								end
								FlatIdent_27957 = 4
							end
							if (FlatIdent_27957 == 1) then
								equipTropicalShake = nil
								function equipTropicalShake()
									local backpack = player:WaitForChild("Backpack")
									local tropicalShakeTool = backpack:FindFirstChild("Tropical Shake")
									if tropicalShakeTool then
										character:WaitForChild("Humanoid"):EquipTool(tropicalShakeTool)
										print("Tropical Shake tool equipped!")
									else
										warn("Tropical Shake tool not found in Backpack!")
									end
								end
								FlatIdent_27957 = 2
							end
						end
					else
						AutoTropicalShakeToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local FortuneWheelToggle = AutoStuffMain:AddToggle("FortuneWheelToggle", {Title="Auto Fortune Wheel Spin",Description="Auto Spins till no Spins left",Default=false})
				FortuneWheelToggle:OnChanged(function()
					if FortuneWheelToggle.Value then
						local FlatIdent_3EEE1 = 0
						local SpinFortuneWheel
						while true do
							if (FlatIdent_3EEE1 == 0) then
								SpinFortuneWheel = nil
								function SpinFortuneWheel()
									for i = 1, 111 do
										task.wait(0.2)
										game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote:InvokeServer("openFortuneWheel", game:GetService("ReplicatedStorage").fortuneWheelChances["Fortune Wheel"])
									end
								end
								FlatIdent_3EEE1 = 1
							end
							if (FlatIdent_3EEE1 == 1) then
								SpinFortuneWheel()
								FortuneWheelToggle.BackgroundColor = RedColor
								break
							end
						end
					else
						FortuneWheelToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local AdsToggle = OtherStuffMain:AddToggle("AdsToggle", {Title="Remove Ads",Description="Removes Ads in Spawn",Default=false})
				AdsToggle:OnChanged(function()
					local FlatIdent_324DE = 0
					local Player
					while true do
						if (FlatIdent_324DE == 1) then
							if AdsToggle.Value then
								AdsToggle.BackgroundColor = RedColor
							else
								AdsToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
							end
							break
						end
						if (0 == FlatIdent_324DE) then
							Player = game:GetService("Players").LocalPlayer
							Player.adsAllowed.Value = not AdsToggle.Value
							FlatIdent_324DE = 1
						end
					end
				end)
				-- local function SpinFortuneWheel()
				-- 	for i = 1, 9999 do
				-- 		game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote:InvokeServer("openFortuneWheel", game:GetService("ReplicatedStorage").fortuneWheelChances["Fortune Wheel"])
				-- 	end
				-- end
				local AutoSizeInput = PlayerSettingsMain:AddInput("AutoSizeInput", {Title="Set Size",Default="2",Placeholder="Enter size value",Numeric=true,Finished=true,Callback=function(Value)
					local FlatIdent_7909D = 0
					while true do
						if (FlatIdent_7909D == 0) then
							_G.targetSize = tonumber(Value)
							print("Size set to:", Value)
							break
						end
					end
				end})
				local SetSizeToggle = PlayerSettingsMain:AddToggle("SetSizeToggle", {Title="Auto Size",Description="Sets the Size value automatically",Default=false})
				SetSizeToggle:OnChanged(function()
					if SetSizeToggle.Value then
						local FlatIdent_64E40 = 0
						local size
						while true do
							if (FlatIdent_64E40 == 0) then
								size = _G.targetSize or 1
								game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", size)
								FlatIdent_64E40 = 1
							end
							if (FlatIdent_64E40 == 1) then
								game:GetService("ReplicatedStorage").rEvents.savePlayerSizeEvent:FireServer("savePlayerSizeOption")
								SetSizeToggle.BackgroundColor = Color3.fromRGB(255, 0, 0)
								break
							end
						end
					else
						SetSizeToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local AutoSpeedInput = PlayerSettingsMain:AddInput("AutoSpeedInput", {Title="Set Speed",Default="14",Placeholder="Enter speed value",Numeric=true,Finished=true,Callback=function(Value)
					local FlatIdent_207CC = 0
					while true do
						if (FlatIdent_207CC == 0) then
							_G.targetSpeed = tonumber(Value)
							print("Speed set to:", Value)
							break
						end
					end
				end})
				local SetSpeedToggle = PlayerSettingsMain:AddToggle("SetSpeedToggle", {Title="Auto Speed Set",Description="Sets the Speed value automatically",Default=false})
				SetSpeedToggle:OnChanged(function()
					if SetSpeedToggle.Value then
						local FlatIdent_6DC53 = 0
						local speed
						while true do
							if (0 == FlatIdent_6DC53) then
								speed = _G.targetSpeed or 14
								game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSpeed", speed)
								FlatIdent_6DC53 = 1
							end
							if (1 == FlatIdent_6DC53) then
								game:GetService("ReplicatedStorage").rEvents.savePlayerSizeEvent:FireServer("savePlayerSpeedOption")
								SetSpeedToggle.BackgroundColor = Color3.fromRGB(255, 0, 0)
								break
							end
						end
					else
						SetSpeedToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local AntiKnockbackToggle = LocalPlayerMain:AddToggle("AntiKnockbackToggle", {Title="Anti Knockback",Description="Prevents knockbacks",Default=false})
				AntiKnockbackToggle:OnChanged(function()
					local FlatIdent_68E92 = 0
					local char
					while true do
						if (FlatIdent_68E92 == 0) then
							char = game.Players.LocalPlayer.Character
							if (char and char:FindFirstChild("HumanoidRootPart")) then
								if AntiKnockbackToggle.Value then
									char.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
								else
									char.HumanoidRootPart.CustomPhysicalProperties = nil
								end
							end
							break
						end
					end
				end)
				local LockPositionToggle = LocalPlayerMain:AddToggle("LockPositionToggle", {Title="Lock Position",Description="Stops external forces but allows movement",Default=false})
				local LockConnection
				LockPositionToggle:OnChanged(function()
					local FlatIdent_6C033 = 0
					local char
					while true do
						if (0 == FlatIdent_6C033) then
							char = game.Players.LocalPlayer.Character
							if (char and char:FindFirstChild("HumanoidRootPart")) then
								if LockPositionToggle.Value then
									local FlatIdent_5B2CE = 0
									local hrp
									while true do
										if (FlatIdent_5B2CE == 0) then
											hrp = char.HumanoidRootPart
											LockConnection = game:GetService("RunService").Stepped:Connect(function()
												if (LockPositionToggle.Value and char and char:FindFirstChild("HumanoidRootPart")) then
													local FlatIdent_2E9CB = 0
													while true do
														if (FlatIdent_2E9CB == 0) then
															hrp.Velocity = Vector3.new(0, hrp.Velocity.Y, 0)
															hrp.RotVelocity = Vector3.new(0, 0, 0)
															break
														end
													end
												end
											end)
											break
										end
									end
								elseif LockConnection then
									LockConnection:Disconnect()
									LockConnection = nil
								end
							end
							break
						end
					end
				end)
				local AutoRebirthInput = CustomizeRebirthInput:AddInput("AutoRebirthInput", {Title="Number",Default="0",Placeholder="Enter the rebirth number",Description="Rebirth Value to Stop at",Numeric=true,Finished=true,Callback=function(Value)
					local FlatIdent_29E69 = 0
					while true do
						if (FlatIdent_29E69 == 0) then
							print("Auto Rebirth target set to:", Value)
							_G.targetRebirth = tonumber(Value)
							break
						end
					end
				end})
				local AutoRebirthToggle = AutoStuffRebirths:AddToggle("AutoRebirthToggle", {Title="Auto Rebirth",Description="Rebirths automatically",Default=false})
				AutoRebirthToggle:OnChanged(function()
					if AutoRebirthToggle.Value then
						while AutoRebirthToggle.Value do
							local currentRebirths = game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value
							local targetRebirth = _G.targetRebirth
							if (currentRebirths < targetRebirth) then
								local FlatIdent_4D434 = 0
								while true do
									if (FlatIdent_4D434 == 0) then
										game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
										wait(0.5)
										break
									end
								end
							else
								break
							end
						end
					else
					end
				end)
				local AntiRebirthToggle = AntiStuffRebirths:AddToggle("AntiRebirthToggle", {Title="Anti Rebirth",Description="Prevents rebirth from being invoked",Default=false})
				local function DisableRebirth()
					local mt = getrawmetatable(game)
					setreadonly(mt, false)
					local oldIndex = mt.__namecall
					mt.__namecall = newcclosure(function(self, ...)
						local method = getnamecallmethod()
						if ((method == "InvokeServer") and (self == game:GetService("ReplicatedStorage").rEvents.rebirthRemote)) then
							return
						end
						return oldIndex(self, ...)
					end)
					setreadonly(mt, true)
				end
				local function EnableRebirth()
					local FlatIdent_45D37 = 0
					local mt
					local oldIndex
					while true do
						if (FlatIdent_45D37 == 0) then
							mt = getrawmetatable(game)
							setreadonly(mt, false)
							FlatIdent_45D37 = 1
						end
						if (FlatIdent_45D37 == 1) then
							oldIndex = mt.__namecall
							mt.__namecall = newcclosure(function(self, ...)
								local FlatIdent_DFF4 = 0
								local method
								while true do
									if (FlatIdent_DFF4 == 0) then
										method = getnamecallmethod()
										return oldIndex(self, ...)
									end
								end
							end)
							FlatIdent_45D37 = 2
						end
						if (FlatIdent_45D37 == 2) then
							setreadonly(mt, true)
							break
						end
					end
				end
				AntiRebirthToggle:OnChanged(function()
					if AntiRebirthToggle.Value then
						local FlatIdent_7DFA5 = 0
						while true do
							if (FlatIdent_7DFA5 == 0) then
								DisableRebirth()
								print("Anti Rebirth enabled.")
								break
							end
						end
					else
						EnableRebirth()
						print("Anti Rebirth disabled.")
					end
				end)
				local player = game:GetService("Players").LocalPlayer
				local backpack = player.Backpack
				local Character = player.Character or player.CharacterAdded:Wait()
				local UIS = game:GetService("UserInputService")
				local VU = game:GetService("VirtualUser")
				local mouse = player:GetMouse()
				local RunService = game:GetService("RunService")
				local punchSpeed = 0.05
				local punch = backpack:WaitForChild("Punch")
				local attackTime = punch:WaitForChild("attackTime")
				attackTime.Value = punchSpeed
				local function EquipPunchTool()
					local FlatIdent_28014 = 0
					while true do
						if (FlatIdent_28014 == 0) then
							for _, tool in ipairs(backpack:GetChildren()) do
								if (tool:IsA("Tool") and tool.Name:lower():find("punch")) then
									tool.Parent = Character
									return tool
								end
							end
							return nil
						end
					end
				end
				local function UnequipPunchTool()
					local FlatIdent_21449 = 0
					local punchTool
					while true do
						if (FlatIdent_21449 == 0) then
							punchTool = Character:FindFirstChildWhichIsA("Tool")
							if punchTool then
								punchTool.Parent = backpack
							end
							break
						end
					end
				end
				local AutoPunchToggle = AutoStuffFarm:AddToggle("AutoPunchToggle", {Title="Auto Punch",Description="Automatically punches",Default=false})
				local PunchSpeedSlider = CustomizeFarm:AddSlider("PunchSpeedSlider", {Title="Punch Speed",Min=0.05,Max=0.35,Default=0.35,Increment=0.005,Rounding=3,Description="Adjust the speed of Auto Punch"})
				local function IsMouseOverUI()
					return UIS:GetFocusedTextBox() ~= nil
				end
				local function AutoPunch()
					while AutoPunchToggle.Value do
						if not IsMouseOverUI() then
							local FlatIdent_67691 = 0
							local punchTool
							while true do
								if (FlatIdent_67691 == 1) then
									if UIS.TouchEnabled then
										local FlatIdent_284EA = 0
										while true do
											if (FlatIdent_284EA == 0) then
												VU:CaptureController()
												VU:ClickButton1(Vector2.new(mouse.ViewSizeX / 2, mouse.ViewSizeY / 2))
												break
											end
										end
									else
										local FlatIdent_67517 = 0
										while true do
											if (FlatIdent_67517 == 0) then
												VU:CaptureController()
												VU:ClickButton1(Vector2.new(mouse.X, mouse.Y))
												break
											end
										end
									end
									task.wait(punchSpeed)
									break
								end
								if (FlatIdent_67691 == 0) then
									punchTool = Character:FindFirstChildOfClass("Tool") or EquipPunchTool()
									if punchTool then
										punchTool:Activate()
									end
									FlatIdent_67691 = 1
								end
							end
						else
							task.wait(0.1)
						end
					end
				end
				AutoPunchToggle:OnChanged(function()
					if AutoPunchToggle.Value then
						local FlatIdent_628E3 = 0
						while true do
							if (FlatIdent_628E3 == 0) then
								EquipPunchTool()
								task.spawn(AutoPunch)
								break
							end
						end
					else
						UnequipPunchTool()
					end
				end)
				PunchSpeedSlider:OnChanged(function(newValue)
					local FlatIdent_2E34E = 0
					while true do
						if (FlatIdent_2E34E == 0) then
							punchSpeed = newValue
							attackTime.Value = newValue
							break
						end
					end
				end)
				local PetManager = {}
				PetManager.__index = PetManager
				PetManager.new = function(player, rEvents)
					local Self = setmetatable({}, PetManager)
					Self.Player = player
					Self.REvents = rEvents
					Self.Enabled = false
					return Self
				end
				PetManager.equipPet = function(self, pet)
					self.REvents.equipPetEvent:FireServer("equipPet", pet)
				end
				PetManager.unequipPet = function(self, pet)
					self.REvents.equipPetEvent:FireServer("unequipPet", pet)
				end
				PetManager.rebirth = function(self)
					self.REvents.rebirthRemote:InvokeServer("rebirthRequest")
				end
				PetManager.getPetsByName = function(self, pattern)
					local FlatIdent_2A9F7 = 0
					local pets
					while true do
						if (FlatIdent_2A9F7 == 0) then
							pets = {}
							for _, pet in pairs(self.Player.petsFolder.Unique:GetChildren()) do
								if pet.Name:match(pattern) then
									table.insert(pets, pet)
								end
							end
							FlatIdent_2A9F7 = 1
						end
						if (FlatIdent_2A9F7 == 1) then
							return pets
						end
					end
				end
				PetManager.startLoop = function(self)
					while self.Enabled do
						local FlatIdent_6AEED = 0
						while true do
							if (FlatIdent_6AEED == 2) then
								self:rebirth()
								for _, pet in pairs(self:getPetsByName("Tribal Overlord")) do
									self:unequipPet(pet)
								end
								break
							end
							if (FlatIdent_6AEED == 0) then
								for _, pet in pairs(self:getPetsByName("Swift Samurai")) do
									self:equipPet(pet)
								end
								wait(5)
								FlatIdent_6AEED = 1
							end
							if (FlatIdent_6AEED == 1) then
								for _, pet in pairs(self:getPetsByName("Swift Samurai")) do
									self:unequipPet(pet)
								end
								for _, pet in pairs(self:getPetsByName("Tribal Overlord")) do
									self:equipPet(pet)
								end
								FlatIdent_6AEED = 2
							end
						end
					end
				end
				local g = game
				local Player = g:GetService("Players").LocalPlayer
				local REvents = g:GetService("ReplicatedStorage").rEvents
				local petsFolder = Player.petsFolder
				local powerUpsFolder = Player.powerUpsFolder
				local Manager = PetManager.new(Player, REvents)
				local PetManagerToggle = FastRebirths:AddToggle("PetManagerToggle", {Title="Fast Rebirth",Description="Swift and Tribal only (PACK Pets)",Default=false})
				PetManagerToggle:OnChanged(function()
					local FlatIdent_331F0 = 0
					while true do
						if (FlatIdent_331F0 == 0) then
							Manager.Enabled = PetManagerToggle.Value
							if Manager.Enabled then
								Manager:startLoop()
							end
							break
						end
					end
				end)
				local PetDropdown = CustomFastRebirth:AddDropdown("PetDropdown", {Title="Select Unique Pet",Description="Select the Pet which has a glitch on it",Values={"Infernal Dragon","Ultra Birdie","Magic Butterfly","Aether Spirit Bunny","Cybernetic Showdown Dragon","Darkstar Hunter","Muscle Sensei","Neon Guardian"},Multi=false,Default=""})
				local AuraDropdown = CustomFastRebirth:AddDropdown("AuraDropdown", {Title="Select Unique Aura",Description="Select the Aura which has a glitch on it",Values={"Inferno","Dark Storm","Dark Lightning","Muscle King","Eternal Megastrike","Entropic Blast"},Multi=false,Default=""})
				local AutoRebirthToggle = CustomFastRebirth:AddToggle("AutoRebirthToggle", {Title="Auto Rebirth (Tribal & Glitches)",Description="Automatically fetches glitches and Rebirths w Tribals",Default=false})
				local function getBestPets()
					local FlatIdent_53124 = 0
					local bestPets
					local folder
					while true do
						if (FlatIdent_53124 == 0) then
							bestPets = {}
							folder = petsFolder:FindFirstChild("Unique")
							FlatIdent_53124 = 1
						end
						if (FlatIdent_53124 == 2) then
							return bestPets
						end
						if (FlatIdent_53124 == 1) then
							if folder then
								for _, pet in ipairs(folder:GetChildren()) do
									local strength = pet:FindFirstChild("perksFolder") and pet.perksFolder:FindFirstChild("strength")
									if (strength and (strength.Value > 5000)) then
										table.insert(bestPets, {pet=pet,strength=strength.Value})
									end
								end
							end
							table.sort(bestPets, function(a, b)
								return a.strength > b.strength
							end)
							FlatIdent_53124 = 2
						end
					end
				end
				local function equipBestPets()
					local FlatIdent_854BA = 0
					local bestPets
					while true do
						if (FlatIdent_854BA == 0) then
							bestPets = getBestPets()
							for i = 1, math.min(8, #bestPets) do
								REvents.equipPetEvent:FireServer("equipPet", bestPets[i].pet)
							end
							FlatIdent_854BA = 1
						end
						if (FlatIdent_854BA == 1) then
							task.wait(4)
							REvents.equipPetEvent:FireServer("equipPet", "Tribal Overlord")
							break
						end
					end
				end
				local function equipBestAura()
					local bestAura, bestStrength = nil, 0
					for _, aura in ipairs(powerUpsFolder.Unique:GetChildren()) do
						local FlatIdent_43626 = 0
						local strength
						while true do
							if (0 == FlatIdent_43626) then
								strength = aura:FindFirstChild("perksFolder") and aura.perksFolder:FindFirstChild("strength")
								if (strength and (strength.Value > bestStrength)) then
									local FlatIdent_43337 = 0
									while true do
										if (FlatIdent_43337 == 0) then
											bestStrength = strength.Value
											bestAura = aura
											break
										end
									end
								end
								break
							end
						end
					end
					if bestAura then
						REvents.equipPetEvent:FireServer("equipPet", bestAura)
					end
				end
				task.spawn(function()
					while true do
						if AutoRebirthToggle.Value then
							local FlatIdent_1468D = 0
							while true do
								if (FlatIdent_1468D == 0) then
									REvents.rebirthRemote:InvokeServer("rebirthRequest")
									equipBestPets()
									FlatIdent_1468D = 1
								end
								if (FlatIdent_1468D == 1) then
									equipBestAura()
									task.wait(0.05)
									break
								end
							end
						else
							task.wait(1)
						end
					end
				end)
				local player = game:GetService("Players").LocalPlayer
				local ChatService = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
				local MessageInput = Tabs.Chat:AddInput("MessageInput", {Title="Chat Message",Placeholder="Enter message...",Default=""})
				local TimeInput = Tabs.Chat:AddInput("TimeInput", {Title="Interval (Seconds)",Placeholder="Enter delay...",Default="5",Numeric=true})
				local ChatToggle = Tabs.Chat:AddToggle("ChatToggle", {Title="Auto Chat",Description="This will allow you to spam in Chat",Default=false})
				task.spawn(function()
					while true do
						if (ChatToggle.Value and ChatService) then
							local FlatIdent_4D83A = 0
							local taggedMessage
							while true do
								if (FlatIdent_4D83A == 0) then
									taggedMessage = MessageInput.Value
									ChatService.SayMessageRequest:FireServer(taggedMessage, "All")
									FlatIdent_4D83A = 1
								end
								if (1 == FlatIdent_4D83A) then
									task.wait(tonumber(TimeInput.Value) or 5)
									break
								end
							end
						else
							task.wait(1)
						end
					end
				end)
				local VisualToggle = VisualStuff:AddToggle("VisualToggle", {Title="Add Special Offer",Description="Adds the Limited time offer (Visual Only)",Default=false})
				VisualToggle:OnChanged(function()
					if VisualToggle.Value then
						local FlatIdent_985A2 = 0
						while true do
							if (FlatIdent_985A2 == 0) then
								game:GetService("Players").LocalPlayer.remainingSpecialOfferTime.Value = 1
								VisualToggle.BackgroundColor = RedColor
								break
							end
						end
					else
						game:GetService("Players").LocalPlayer.remainingSpecialOfferTime.Value = 0
						VisualToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local PetCapacityToggle = VisualStuff:AddToggle("PetCapacityToggle", {Title="Inf Pet Capacity",Description="Spoofs your Capacity (Visual Only)",Default=false})
				local originalCapacity = game:GetService("Players").LocalPlayer.maxPetCapacity.Value
				PetCapacityToggle:OnChanged(function()
					local FlatIdent_512FF = 0
					local Player
					while true do
						if (FlatIdent_512FF == 0) then
							Player = game:GetService("Players").LocalPlayer
							if PetCapacityToggle.Value then
								local FlatIdent_829F9 = 0
								while true do
									if (FlatIdent_829F9 == 0) then
										originalCapacity = Player.maxPetCapacity.Value
										Player.maxPetCapacity.Value = 99999
										break
									end
								end
							else
								Player.maxPetCapacity.Value = originalCapacity
							end
							break
						end
					end
				end)
				local rebirthButton = game.Players.LocalPlayer.PlayerGui.gameGui.sideButtons.rebirthButton
				local Toggle = VisualStuff:AddToggle("RebirthToggle", {Title="Remove Rebirth Button",Description="Removes the Rebirth Button (Visual)",Default=false})
				Toggle:OnChanged(function()
					rebirthButton.Visible = not Toggle.Value
				end)
				local rSto = game:GetService("ReplicatedStorage")
				local HideFramesToggle = RemoveStatsFrames:AddToggle("HideFramesToggle", {Title="Remove Stat Frames",Description="Removes Strength, Durability, and Agility Frames (More FPS)",Default=false})
				local function UpdateFrames()
					local frames = {"strengthFrame","durabilityFrame","agilityFrame"}
					for _, frameName in ipairs(frames) do
						local frame = rSto:FindFirstChild(frameName)
						if frame then
							frame.Visible = not HideFramesToggle.Value
						end
					end
				end
				HideFramesToggle:OnChanged(UpdateFrames)
				local PunchAnimationDropdown = Tabs.Animations:AddDropdown("Animations", {Title="Select Punch Animation",Values={"Normal Punch","Combo Kick","Double Punch","Overhead Slam","Ultra Spin","Uppercut"},Description="Replace your Punch Animation with another",Default="Normal Punch"})
				PunchAnimationDropdown:OnChanged(function(Value)
				end)
				local Players = game:GetService("Players")
				local LocalPlayer = Players.LocalPlayer
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local rEvents = ReplicatedStorage.rEvents
				local UIS = game:GetService("UserInputService")
				local VU = game:GetService("VirtualUser")
				local AutoRocksDropdown = Tabs.AutoRocks:AddDropdown("AutoRocks", {Title="Select Rock for Auto",Description="Select the Rock you wanna Auto",Values={"Frozen Rock","Mystic Rock","Eternal Rock","Legends Rock","Muscle King Rock","Jungle Ancient Rock"},Default=""})
				local TeleportMethodDropdown = Tabs.AutoRocks:AddDropdown("TeleportMethodDropdown", {Title="Grind Location",Description="Select the Location where you wanna Auto Rock",Values={"Location1","Location2"},Default=""})
				local RockSizeInput = Tabs.AutoRocks:AddInput("RockSizeInput", {Title="Size",Description="Set size for the rock",Default="3",Numeric=true,Finished=true,Callback=function(Value)
					local FlatIdent_30F75 = 0
					local size
					while true do
						if (0 == FlatIdent_30F75) then
							size = tonumber(Value)
							if (size and (size > 0)) then
								_G.RockSize = size
							end
							break
						end
					end
				end})
				local function TeleportAndSetSize(rockType, teleportMethod)
					local coordinates = nil
					local size = _G.RockSize or 5
					if (rockType == "Frozen Rock") then
						if (teleportMethod == "First Location") then
							coordinates = Vector3.new(-2590, 13, -217)
						else
							coordinates = Vector3.new(-2532, 13, -198)
						end
					elseif (rockType == "Mystic Rock") then
						if (teleportMethod == "First Location") then
							coordinates = Vector3.new(2221, 13, 1216)
						else
							coordinates = Vector3.new(2168, 13, 1296)
						end
					elseif (rockType == "Eternal Rock") then
						if (teleportMethod == "First Location") then
							coordinates = Vector3.new(-7220, 13, -1279)
						else
							coordinates = Vector3.new(-7284, 13, -1212)
						end
					elseif (rockType == "Legends Rock") then
						if (teleportMethod == "First Location") then
							coordinates = Vector3.new(4199, 997, -4093)
						else
							coordinates = Vector3.new(4086, 995, -4074)
						end
					elseif (rockType == "Muscle King Rock") then
						if (teleportMethod == "First Location") then
							coordinates = Vector3.new(-9042, 15, -6031)
						else
							coordinates = Vector3.new(-9023, 50, -6107)
						end
						size = 3
					elseif (rockType == "Jungle Ancient Rock") then
						local FlatIdent_527C6 = 0
						while true do
							if (FlatIdent_527C6 == 0) then
								if (teleportMethod == "First Location") then
									coordinates = Vector3.new(-7701, 7, 2955)
								else
									coordinates = Vector3.new(-7520, 5, 2878)
								end
								size = 3
								break
							end
						end
					end
					LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(coordinates)
					rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", size)
				end
				local function EquipPunchTool()
					local FlatIdent_B1F4 = 0
					local backpack
					local punchTool
					while true do
						if (FlatIdent_B1F4 == 1) then
							if not punchTool then
								local FlatIdent_86E18 = 0
								local handle
								while true do
									if (4 == FlatIdent_86E18) then
										handle.CanCollide = false
										handle.Parent = punchTool
										break
									end
									if (FlatIdent_86E18 == 1) then
										punchTool.RequiresHandle = true
										punchTool.Parent = backpack
										FlatIdent_86E18 = 2
									end
									if (FlatIdent_86E18 == 2) then
										handle = Instance.new("Part")
										handle.Name = "Handle"
										FlatIdent_86E18 = 3
									end
									if (FlatIdent_86E18 == 0) then
										punchTool = Instance.new("Tool")
										punchTool.Name = "Punch"
										FlatIdent_86E18 = 1
									end
									if (FlatIdent_86E18 == 3) then
										handle.Size = Vector3.new(1, 1, 1)
										handle.Anchored = true
										FlatIdent_86E18 = 4
									end
								end
							end
							LocalPlayer.Character.Humanoid:EquipTool(punchTool)
							break
						end
						if (FlatIdent_B1F4 == 0) then
							backpack = LocalPlayer.Backpack
							punchTool = backpack:FindFirstChild("Punch")
							FlatIdent_B1F4 = 1
						end
					end
				end
				local function StartAutoPunch()
					while AutoPunchRockToggle.Value do
						if not IsMouseOverUI() then
							local punchTool = LocalPlayer.Backpack:FindFirstChild("Punch")
							if punchTool then
								punchTool:Activate()
							end
							if UIS.TouchEnabled then
								local FlatIdent_699E4 = 0
								while true do
									if (FlatIdent_699E4 == 0) then
										VU:CaptureController()
										VU:ClickButton1(Vector2.new(mouse.ViewSizeX / 2, mouse.ViewSizeY / 2))
										break
									end
								end
							else
								local FlatIdent_5AB84 = 0
								while true do
									if (FlatIdent_5AB84 == 0) then
										VU:CaptureController()
										VU:ClickButton1(Vector2.new(mouse.X, mouse.Y))
										break
									end
								end
							end
							task.wait(0.1)
						else
							task.wait(0.1)
						end
					end
				end
				local AutoPunchRockToggle = Tabs.AutoRocks:AddToggle("AutoPunchRockToggle", {Title="Auto Punch Rock",Description="Auto Punch the selected rock (hidden)",Default=false})
				AutoPunchRockToggle:OnChanged(function()
					if AutoPunchRockToggle.Value then
						local FlatIdent_1BAD7 = 0
						local selectedRock
						local teleportMethod
						while true do
							if (FlatIdent_1BAD7 == 0) then
								selectedRock = AutoRocksDropdown.Value
								teleportMethod = TeleportMethodDropdown.Value
								FlatIdent_1BAD7 = 1
							end
							if (FlatIdent_1BAD7 == 1) then
								if (selectedRock and teleportMethod) then
									local FlatIdent_6EF7B = 0
									while true do
										if (FlatIdent_6EF7B == 0) then
											TeleportAndSetSize(selectedRock, teleportMethod)
											EquipPunchTool()
											FlatIdent_6EF7B = 1
										end
										if (FlatIdent_6EF7B == 1) then
											StartAutoPunch()
											break
										end
									end
								else
									local FlatIdent_6E214 = 0
									while true do
										if (FlatIdent_6E214 == 0) then
											print("Please select both a rock and grind location before enabling Auto Punch.")
											AutoPunchRockToggle:Set(false)
											break
										end
									end
								end
								break
							end
						end
					else
						local punchTool = LocalPlayer.Backpack:FindFirstChild("Punch")
						if punchTool then
							LocalPlayer.Character.Humanoid:UnequipTools()
						end
					end
				end)
				AutoRocksDropdown:OnChanged(function()
					if AutoPunchRockToggle.Value then
						local selectedRock = AutoRocksDropdown.Value
						local teleportMethod = TeleportMethodDropdown.Value
						if (selectedRock and teleportMethod) then
							TeleportAndSetSize(selectedRock, teleportMethod)
						end
					end
				end)
				TeleportMethodDropdown:OnChanged(function()
					if AutoPunchRockToggle.Value then
						local FlatIdent_90E07 = 0
						local selectedRock
						local teleportMethod
						while true do
							if (FlatIdent_90E07 == 1) then
								if (selectedRock and teleportMethod) then
									TeleportAndSetSize(selectedRock, teleportMethod)
								end
								break
							end
							if (FlatIdent_90E07 == 0) then
								selectedRock = AutoRocksDropdown.Value
								teleportMethod = TeleportMethodDropdown.Value
								FlatIdent_90E07 = 1
							end
						end
					end
				end)
				local Players = game:GetService("Players")
				local LocalPlayer = Players.LocalPlayer
				local Backpack = LocalPlayer:FindFirstChild("Backpack")
				local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
				local function EquipTool(toolName, hide)
					if Backpack then
						local FlatIdent_71493 = 0
						local tool
						while true do
							if (FlatIdent_71493 == 0) then
								tool = Backpack:FindFirstChild(toolName)
								if tool then
									tool.Parent = Character
									if hide then
										tool.Parent = nil
									end
								end
								break
							end
						end
					end
				end
				local function UnequipTool(toolName)
					if Character then
						local FlatIdent_1691A = 0
						local tool
						while true do
							if (FlatIdent_1691A == 0) then
								tool = Character:FindFirstChild(toolName)
								if tool then
									tool.Parent = Backpack
								end
								break
							end
						end
					end
				end
				local AutoWeightToggle = Tabs.AutoFarm:AddToggle("AutoWeightToggle", {Title="Auto Weight",Description="Auto Equip Weight",Default=false})
				AutoWeightToggle:OnChanged(function()
					if AutoWeightToggle.Value then
						EquipTool("Weight")
						AutoWeightToggle.BackgroundColor = RedColor
						while AutoWeightToggle.Value and Character:FindFirstChild("Weight") do
							LocalPlayer.muscleEvent:FireServer("rep")
							task.wait(0.01)
						end
					else
						local FlatIdent_22A5C = 0
						while true do
							if (0 == FlatIdent_22A5C) then
								UnequipTool("Weight")
								AutoWeightToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
								break
							end
						end
					end
				end)
				local AutoPushupsToggle = Tabs.AutoFarm:AddToggle("AutoPushupsToggle", {Title="Auto Pushups",Description="Auto Equip Pushups",Default=false})
				AutoPushupsToggle:OnChanged(function()
					if AutoPushupsToggle.Value then
						local FlatIdent_52EE1 = 0
						while true do
							if (FlatIdent_52EE1 == 0) then
								EquipTool("Pushups")
								AutoPushupsToggle.BackgroundColor = RedColor
								FlatIdent_52EE1 = 1
							end
							if (FlatIdent_52EE1 == 1) then
								while AutoPushupsToggle.Value and Character:FindFirstChild("Pushups") do
									local FlatIdent_2F298 = 0
									while true do
										if (FlatIdent_2F298 == 0) then
											LocalPlayer.muscleEvent:FireServer("rep")
											task.wait(0.01)
											break
										end
									end
								end
								break
							end
						end
					else
						UnequipTool("Pushups")
						AutoPushupsToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local AutoSitupsToggle = Tabs.AutoFarm:AddToggle("AutoSitupsToggle", {Title="Auto Situps",Description="Auto Equip Situps",Default=false})
				AutoSitupsToggle:OnChanged(function()
					if AutoSitupsToggle.Value then
						local FlatIdent_7D3C9 = 0
						while true do
							if (1 == FlatIdent_7D3C9) then
								while AutoSitupsToggle.Value and Character:FindFirstChild("Situps") do
									local FlatIdent_15034 = 0
									while true do
										if (FlatIdent_15034 == 0) then
											LocalPlayer.muscleEvent:FireServer("rep")
											task.wait(0.01)
											break
										end
									end
								end
								break
							end
							if (0 == FlatIdent_7D3C9) then
								EquipTool("Situps")
								AutoSitupsToggle.BackgroundColor = RedColor
								FlatIdent_7D3C9 = 1
							end
						end
					else
						UnequipTool("Situps")
						AutoSitupsToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local AutoHandstandsToggle = Tabs.AutoFarm:AddToggle("AutoHandstandsToggle", {Title="Auto Handstands",Description="Auto Equip Handstands",Default=false})
				AutoHandstandsToggle:OnChanged(function()
					if AutoHandstandsToggle.Value then
						local FlatIdent_23FF9 = 0
						while true do
							if (FlatIdent_23FF9 == 0) then
								EquipTool("Handstands")
								AutoHandstandsToggle.BackgroundColor = RedColor
								FlatIdent_23FF9 = 1
							end
							if (FlatIdent_23FF9 == 1) then
								while AutoHandstandsToggle.Value and Character:FindFirstChild("Handstands") do
									LocalPlayer.muscleEvent:FireServer("rep")
									task.wait(0.01)
								end
								break
							end
						end
					else
						UnequipTool("Handstands")
						AutoHandstandsToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
					end
				end)
				local Players = game:GetService("Players")
				local LocalPlayer = Players.LocalPlayer
				_G.Whitelist = _G.Whitelist or {}
				_G.KillAuraRange = _G.KillAuraRange or 10
				_G.KillAuraEnabled = _G.KillAuraEnabled or false
				_G.AutoKillEnabled = _G.AutoKillEnabled or false
				_G.RefreshPlayersEnabled = _G.RefreshPlayersEnabled or false
				local function GetNearbyPlayers(range)
					local FlatIdent_810B1 = 0
					local nearbyPlayers
					while true do
						if (FlatIdent_810B1 == 0) then
							nearbyPlayers = {}
							for _, player in pairs(Players:GetPlayers()) do
								if ((player ~= LocalPlayer) and player.Character and player.Character:FindFirstChild("HumanoidRootPart")) then
									local FlatIdent_70003 = 0
									local distance
									while true do
										if (FlatIdent_70003 == 0) then
											distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
											if (distance <= range) then
												local FlatIdent_322B4 = 0
												local humanoid
												while true do
													if (FlatIdent_322B4 == 0) then
														humanoid = player.Character:FindFirstChild("Humanoid")
														if (humanoid and (humanoid.Health > 0)) then
															table.insert(nearbyPlayers, player)
														end
														break
													end
												end
											end
											break
										end
									end
								end
							end
							FlatIdent_810B1 = 1
						end
						if (FlatIdent_810B1 == 1) then
							return nearbyPlayers
						end
					end
				end
				local function GetAllEnemies()
					local enemies = {}
					for _, player in pairs(Players:GetPlayers()) do
						if ((player ~= LocalPlayer) and player.Character and player.Character:FindFirstChild("HumanoidRootPart")) then
							local FlatIdent_9851B = 0
							local humanoid
							while true do
								if (FlatIdent_9851B == 0) then
									humanoid = player.Character:FindFirstChild("Humanoid")
									if (humanoid and (humanoid.Health > 0)) then
										table.insert(enemies, player)
									end
									break
								end
							end
						end
					end
					return enemies
				end
				local function TeleportEnemyToMe(enemy)
					if (enemy and enemy.Character and enemy.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
						local enemyHRP = enemy.Character.HumanoidRootPart
						enemyHRP.CanCollide = true
						local localHRP = LocalPlayer.Character.HumanoidRootPart
						local targetCFrame = localHRP.CFrame * CFrame.new(0, 0, -4)
						enemyHRP.CFrame = targetCFrame
					end
				end
				local AutoKillToggle = Tabs.Kills:AddToggle("AutoKillToggle", {Title="Auto Kill",Description="Teleports and attacks all enemy players automatically",Default=false,Callback=function(Value)
					_G.AutoKillEnabled = Value
				end})
				local KillAuraToggle = Tabs.Kills:AddToggle("KillAuraToggle", {Title="Kill Aura",Description="Teleports and attacks players within the specified range",Default=false,Callback=function(Value)
					_G.KillAuraEnabled = Value
				end})
				local RangeInput = Tabs.Kills:AddInput("RangeInput", {Title="Range",Description="Enter a Value",Default="10",Placeholder="Enter range...",Numeric=true,Finished=true,Callback=function(Value)
					local FlatIdent_3E44E = 0
					local range
					while true do
						if (FlatIdent_3E44E == 0) then
							range = tonumber(Value)
							if (range and (range > 0)) then
								_G.KillAuraRange = range
							else
								print("Invalid range input.")
							end
							break
						end
					end
				end})
				local WhitelistDropdown = Tabs.Kills:AddDropdown("WhitelistDropdown", {Title="Whitelist Players",Description="Choose users to be whitelisted (ignored)",Values=(function()
					local FlatIdent_23521 = 0
					local names
					while true do
						if (1 == FlatIdent_23521) then
							return names
						end
						if (FlatIdent_23521 == 0) then
							names = {}
							for _, player in pairs(Players:GetPlayers()) do
								if (player ~= LocalPlayer) then
									table.insert(names, player.Name)
								end
							end
							FlatIdent_23521 = 1
						end
					end
				end)(),Multi=true,Default={},Callback=function(SelectedPlayers)
					_G.Whitelist = SelectedPlayers
				end})
				local RefreshPlayersToggle = Tabs.Kills:AddToggle("RefreshPlayersToggle", {Title="Refresh Players",Description="Automatically refresh the player list every second",Default=false,Callback=function(Value)
					_G.RefreshPlayersEnabled = Value
					if _G.RefreshPlayersEnabled then
						task.spawn(function()
							while _G.RefreshPlayersEnabled do
								local FlatIdent_974E = 0
								local names
								while true do
									if (FlatIdent_974E == 0) then
										names = {}
										for _, player in pairs(Players:GetPlayers()) do
											if (player ~= LocalPlayer) then
												table.insert(names, player.Name)
											end
										end
										FlatIdent_974E = 1
									end
									if (FlatIdent_974E == 1) then
										WhitelistDropdown:SetValues(names)
										task.wait(1)
										break
									end
								end
							end
						end)
					end
				end})
				local function ExecuteKillAura()
					task.spawn(function()
						while _G.KillAuraEnabled do
							local FlatIdent_129E6 = 0
							local enemiesInRange
							while true do
								if (0 == FlatIdent_129E6) then
									enemiesInRange = GetNearbyPlayers(_G.KillAuraRange)
									for _, enemy in pairs(enemiesInRange) do
										if ((#(_G.Whitelist or {}) == 0) or not table.find(_G.Whitelist, enemy.Name)) then
											local FlatIdent_91A09 = 0
											while true do
												if (FlatIdent_91A09 == 1) then
													for i = 1, 3 do
														local FlatIdent_89126 = 0
														while true do
															if (FlatIdent_89126 == 1) then
																task.wait(0.001)
																break
															end
															if (FlatIdent_89126 == 0) then
																LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
																LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
																FlatIdent_89126 = 1
															end
														end
													end
													break
												end
												if (FlatIdent_91A09 == 0) then
													TeleportEnemyToMe(enemy)
													task.wait(0.01)
													FlatIdent_91A09 = 1
												end
											end
										end
									end
									FlatIdent_129E6 = 1
								end
								if (FlatIdent_129E6 == 1) then
									task.wait(0.5)
									break
								end
							end
						end
					end)
				end
				local function ExecuteAutoKill()
					task.spawn(function()
						while _G.AutoKillEnabled do
							local FlatIdent_2C453 = 0
							local allEnemies
							while true do
								if (FlatIdent_2C453 == 1) then
									task.wait(0.5)
									break
								end
								if (FlatIdent_2C453 == 0) then
									allEnemies = GetAllEnemies()
									for _, enemy in pairs(allEnemies) do
										if ((#(_G.Whitelist or {}) == 0) or not table.find(_G.Whitelist, enemy.Name)) then
											TeleportEnemyToMe(enemy)
											task.wait(0.01)
											for i = 1, 3 do
												local FlatIdent_92569 = 0
												while true do
													if (FlatIdent_92569 == 0) then
														LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
														LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
														FlatIdent_92569 = 1
													end
													if (1 == FlatIdent_92569) then
														task.wait(0.001)
														break
													end
												end
											end
										end
									end
									FlatIdent_2C453 = 1
								end
							end
						end
					end)
				end
				KillAuraToggle:OnChanged(function()
					if KillAuraToggle.Value then
						ExecuteKillAura()
					end
				end)
				AutoKillToggle:OnChanged(function()
					if AutoKillToggle.Value then
						ExecuteAutoKill()
					end
				end)
				local AutoPunchHiddenToggle = Tabs.AutoFarm:AddToggle("AutoPunchHiddenToggle", {Title="Auto Punch (Hidden)",Description="Removes the Punch Animation",Default=false})
				AutoPunchHiddenToggle:OnChanged(function()
					if AutoPunchHiddenToggle.Value then
						local FlatIdent_8770C = 0
						while true do
							if (FlatIdent_8770C == 2) then
								while AutoPunchHiddenToggle.Value do
									LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
									LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
									task.wait(0.001)
								end
								break
							end
							if (FlatIdent_8770C == 1) then
								UnequipTool("Ground Slam")
								AutoPunchHiddenToggle.BackgroundColor = RedColor
								FlatIdent_8770C = 2
							end
							if (FlatIdent_8770C == 0) then
								EquipTool("Punch", true)
								EquipTool("Ground Slam")
								FlatIdent_8770C = 1
							end
						end
					else
						local FlatIdent_1077D = 0
						while true do
							if (0 == FlatIdent_1077D) then
								UnequipTool("Punch")
								AutoPunchHiddenToggle.BackgroundColor = Color3.fromRGB(0, 0, 0)
								break
							end
						end
					end
				end)
				local player = game:GetService("Players").LocalPlayer
				local replicatedStorage = game:GetService("ReplicatedStorage")
				local petsFolder = player:WaitForChild("petsFolder")
				local powerUpsFolder = player:WaitForChild("powerUpsFolder")
				local cPetShopFolder = replicatedStorage:WaitForChild("cPetShopFolder")
				local cPetShopRemote = replicatedStorage:WaitForChild("cPetShopRemote")
				local rEvents = replicatedStorage:WaitForChild("rEvents")
				local BuyAmount = 1
				local AutoOpenCrystalDropDown = Tabs.Crystals:AddDropdown("AutoOpenCrystalDropDown", {Title="Select Unique Pet",Values={"Infernal Dragon","Ultra Birdie","Magic Butterfly","Aether Spirit Bunny","Cybernetic Showdown Dragon","Darkstar Hunter","Muscle Sensei","Neon Guardian"},Default="None"})
				local AutoOpenCrystal = false
				Tabs.Crystals:AddToggle("AutoOpenCrystal", {Title="Auto Buy Pet",Description="Auto Buys the Pet",Default=false,Callback=function(Value)
					local FlatIdent_89C1C = 0
					while true do
						if (FlatIdent_89C1C == 0) then
							AutoOpenCrystal = Value
							if AutoOpenCrystal then
								task.spawn(function()
									while AutoOpenCrystal do
										local petName = AutoOpenCrystalDropDown.Value
										for i = 1, BuyAmount do
											cPetShopRemote:InvokeServer(cPetShopFolder[petName])
											wait(0.05)
										end
										wait(0.1)
									end
								end)
							end
							break
						end
					end
				end})
				local AutoEvolve = false
				Tabs.Crystals:AddToggle("AutoEvolvePets", {Title="Auto Evolve Pets",Description="Auto Evolves purchased Pets",Default=false,Callback=function(Value)
					local FlatIdent_480B4 = 0
					while true do
						if (FlatIdent_480B4 == 0) then
							AutoEvolve = Value
							if AutoEvolve then
								task.spawn(function()
									while AutoEvolve do
										local FlatIdent_851CE = 0
										while true do
											if (FlatIdent_851CE == 0) then
												for _, Pet in pairs(petsFolder:GetChildren()) do
													rEvents.petEvolveEvent:FireServer("evolvePet", Pet.Name)
												end
												wait(0.01)
												break
											end
										end
									end
								end)
							end
							break
						end
					end
				end})
				local AuraDropDown = Tabs.Crystals:AddDropdown("AuraDropDown", {Title="Select Unique Aura",Values={"Inferno","Dark Storm","Dark Lightning","Muscle King","Eternal Megastrike","Entropic Blast"},Description="Choose a Unique Aura you want to buy",Default="None"})
				local AutoBuyAura = false
				Tabs.Crystals:AddToggle("AutoBuyAura", {Title="Auto Buy Unique Aura",Default=false,Callback=function(Value)
					local FlatIdent_29A75 = 0
					while true do
						if (FlatIdent_29A75 == 0) then
							AutoBuyAura = Value
							if AutoBuyAura then
								task.spawn(function()
									while AutoBuyAura do
										local FlatIdent_80652 = 0
										local auraName
										while true do
											if (1 == FlatIdent_80652) then
												wait(0.1)
												break
											end
											if (FlatIdent_80652 == 0) then
												auraName = AuraDropDown.Value
												for i = 1, BuyAmount do
													local FlatIdent_93FA5 = 0
													while true do
														if (0 == FlatIdent_93FA5) then
															cPetShopRemote:InvokeServer(cPetShopFolder[auraName])
															wait(0.05)
															break
														end
													end
												end
												FlatIdent_80652 = 1
											end
										end
									end
								end)
							end
							break
						end
					end
				end})
				local AutoEvolveAura = false
				Tabs.Crystals:AddToggle("AutoEvolveAura", {Title="Auto Evolve Auras",Description="Auto Evolves purchased Auras",Default=false,Callback=function(Value)
					local FlatIdent_1784A = 0
					while true do
						if (FlatIdent_1784A == 0) then
							AutoEvolveAura = Value
							if AutoEvolveAura then
								task.spawn(function()
									while AutoEvolveAura do
										local FlatIdent_4E1DE = 0
										while true do
											if (0 == FlatIdent_4E1DE) then
												for _, Aura in pairs(powerUpsFolder.Unique:GetChildren()) do
													rEvents.evolvePowerUpEvent:FireServer("evolvePowerUp", Aura)
												end
												wait(0.01)
												break
											end
										end
									end
								end)
							end
							break
						end
					end
				end})
				local VU = game:GetService("VirtualUser")
				local RSrv = game:GetService("RunService")
				local ATh = 5
				local AE = false
				local LastFrame = tick()
				local AntiAFKToggle = Tabs.Other:AddToggle("AntiAFKToggle", {Title="Anti-AFK",Description="Prevent kicks from AFK",Default=false})
				AntiAFKToggle:OnChanged(function()
					local FlatIdent_12B6E = 0
					while true do
						if (FlatIdent_12B6E == 1) then
							if AE then
								game:GetService("StarterGui"):SetCore("SendNotification", {Title="Anti-AFK",Text="Active!",Duration=3})
							end
							break
						end
						if (FlatIdent_12B6E == 0) then
							AE = AntiAFKToggle.Value
							AntiAFKToggle.BackgroundColor = (AE and Color3.fromRGB(255, 0, 0)) or Color3.fromRGB(0, 0, 0)
							FlatIdent_12B6E = 1
						end
					end
				end)
				local function simulateActivity()
					if AE then
						VU:CaptureController()
						VU:ClickButton2(Vector2.new(math.random(), math.random()))
					end
				end
				RSrv.Heartbeat:Connect(function()
					if (AE and ((tick() - LastFrame) >= ATh)) then
						local FlatIdent_3C8BC = 0
						while true do
							if (FlatIdent_3C8BC == 0) then
								simulateActivity()
								LastFrame = tick()
								break
							end
						end
					end
				end)
				player.Idled:Connect(function()
					if AE then
						local FlatIdent_82A94 = 0
						while true do
							if (0 == FlatIdent_82A94) then
								VU:CaptureController()
								VU:ClickButton2(Vector2.new())
								break
							end
						end
					end
				end)
				local function clearCacheData()
					local PlayerDataStore = game:GetService("DataStoreService"):GetDataStore("PlayerDataStore")
					local success, errorMsg = pcall(function()
						PlayerDataStore:RemoveAsync(player.UserId)
					end)
					if not success then
						warn("Failed to clear cache: " .. errorMsg)
					end
				end
				local CacheClearToggle = Tabs.Other:AddToggle("CacheClearToggle", {Title="Clear Cache",Description="Automatically clears cache from Client",Default=false})
				CacheClearToggle:OnChanged(function()
					local FlatIdent_69486 = 0
					while true do
						if (FlatIdent_69486 == 0) then
							CacheClearToggle.BackgroundColor = (CacheClearToggle.Value and Color3.fromRGB(255, 0, 0)) or Color3.fromRGB(0, 0, 0)
							if CacheClearToggle.Value then
								clearCacheData()
								while CacheClearToggle.Value do
									local FlatIdent_185A5 = 0
									while true do
										if (0 == FlatIdent_185A5) then
											wait(1800)
											clearCacheData()
											break
										end
									end
								end
							end
							break
						end
					end
				end)
				game:BindToClose(function()
					if CacheClearToggle.Value then
						clearCacheData()
					end
				end)
			end
			break
		end
		if (FlatIdent_61538 == 2) then
			Tabs = {Main=Window:AddTab({Title="Home",Icon="rbxassetid://10723407389"}),AutoRocks=Window:AddTab({Title="Auto Rocks",Icon="rbxassetid://10709797837"}),AutoFarm=Window:AddTab({Title="Auto Farm",Icon="rbxassetid://10723405360"}),Kills=Window:AddTab({Title="Killer",Icon="rbxassetid://10734962068"}),AutoRebirth=Window:AddTab({Title="Rebirths",Icon="rbxassetid://10734933222"}),Animations=Window:AddTab({Title="Animations",Icon="rbxassetid://10734923549"}),Crystals=Window:AddTab({Title="Crystal",Icon="rbxassetid://10723396000"}),Chat=Window:AddTab({Title="Chat",Icon="rbxassetid://10734888000"}),Visual=Window:AddTab({Title="Visual",Icon="rbxassetid://10723346871"}),Other=Window:AddTab({Title="Other",Icon="rbxassetid://10747383470"})}
			RedColor = Color3.fromRGB(8, 0, 23)
			FlatIdent_61538 = 3
		end
		if (FlatIdent_61538 == 1) then
			SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
			Window = Fluent:CreateWindow({Title="Vyxon",SubTitle="| Muscle Legends V.0.6",TabWidth=140,Size=UDim2.fromOffset(520, 330),Acrylic=true,Theme="Darker",BackgroundColor=Color3.fromRGB(255, 0, 0)})
			FlatIdent_61538 = 2
		end
		if (FlatIdent_61538 == 0) then
			game:GetService("StarterGui"):SetCore("SendNotification", {Title="Succesfully Authorized",Text="You have permission to use this Script",Duration=5,Button1Callback=function()
				print("User acknowledged the notification")
			end,BackgroundTransparency=0,TextSize=20,TextColor3=Color3.fromRGB(255, 255, 255),Font=Enum.Font.Gotham,MinimizeKey=Enum.KeyCode.LeftControl})
			Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
			FlatIdent_61538 = 1
		end
	end
else
	game:GetService("StarterGui"):SetCore("SendNotification", {Title="Not authorized",Text="You dont have permission to use this Script",Duration=5,Button1Callback=function()
		print("User acknowledged the notification")
	end,BackgroundTransparency=0.5,TextSize=20,TextColor3=Color3.fromRGB(255, 255, 255),Font=Enum.Font.Gotham})
	warn("You are not authorized to use this script.")
	return
end
