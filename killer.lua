--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v33=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v33,v33 + 1 )),v1(v2(v25,1 + (v33% #v25) ,1 + (v33% #v25) + 1 )))%256 ));end return v5(v26);end local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\23\200\38\192\236\44\223\62\246\249\49\219\35\198\249","\156\67\173\74\165"));local v10=game:GetService(v7("\28\163\93\6\143\35\84\34\190\74\19","\38\84\215\41\118\220\70"));local v11=game:GetService(v7("\98\3\44\33\251\66\0\43\17\251","\158\48\118\66\114"));local v12=v8.LocalPlayer;local v13=3623096087;local v14=0 -0 ;local v15=game.JobId;local v16=v7("\155\49\30\53\123","\155\203\68\112\86\19\197");local v17=false;local function v18() local v27=1787 -(995 + 792) ;local v28;while true do if (v27==(763 -(82 + 681))) then v28=v12:FindFirstChild(v7("\100\220\53\247\80\121\230\243","\152\38\189\86\156\32\24\133"));if v28 then local v60=0 -0 ;local v61;while true do if (v60==0) then v61=v28:FindFirstChild(v16);if v61 then v12.Character.Humanoid:EquipTool(v61);v17=true;end break;end end end break;end end end local function v19() if (v12.Character and v12.Character:FindFirstChild(v7("\212\66\170\71\242\88\174\66\206\88\168\82\204\86\181\82","\38\156\55\199"))) then local v44=0;local v45;while true do if (v44==(1709 -(71 + 1638))) then v45=v12.Character.HumanoidRootPart;for v64,v65 in pairs(v8:GetPlayers()) do if ((v65~=v12) and v65.Character and v65.Character:FindFirstChild(v7("\128\104\113\41\29\123\243\71\154\114\115\60\35\117\232\87","\35\200\29\28\72\115\20\154"))) then local v67=0 -0 ;local v68;while true do if (v67==0) then v68=v45.CFrame * CFrame.new(0 + 0 ,0 -0 , -4) ;v65.Character.HumanoidRootPart.CFrame=v68;break;end end end end break;end end end end local function v20(v29) if (v29 and v29.Character and v29.Character:FindFirstChild(v7("\49\170\220\222\131\35\61\29\141\222\208\153\28\53\11\171","\84\121\223\177\191\237\76")) and v12.Character and v12.Character:FindFirstChild(v7("\147\67\196\161\52\95\57\197\137\89\198\180\10\81\34\213","\161\219\54\169\192\90\48\80"))) then local v46=v29.Character.HumanoidRootPart;local v47=v12.Character.HumanoidRootPart;local v48=v47.CFrame * CFrame.new(0 + 0 ,0 + 0 , -4) ;v46.CFrame=v48;end end task.spawn(function() while true do v18();local v34=v12:FindFirstChild(v7("\68\87\19\38\69\71\37\51\76\76\20","\69\41\34\96"));if v34 then v34:FireServer(v7("\172\214\217\9\10","\75\220\163\183\106\98"),v7("\16\179\140\63\205\42\187\133\51","\185\98\218\235\87"));v34:FireServer(v7("\219\41\41\229\214","\202\171\92\71\134\190"),v7("\37\196\42\156\1\192\34\140","\232\73\161\76"));end v11.RenderStepped:Wait();end end);local function v21() local v30,v31=pcall(function() return v10:JSONDecode(game:HttpGet(v7("\179\205\86\77\13\225\150\13\90\31\182\220\81\19\12\180\219\78\82\6\245\218\77\80\81\173\136\13\90\31\182\220\81\18","\126\219\185\34\61")   .. v13   .. v7("\67\221\91\96\104\114\225\244\67\254\75\112\114\126\240\184\31\193\76\102\81\101\247\226\30\147\127\97\125\49\255\238\1\199\74\47\47\39\163","\135\108\174\62\18\30\23\147") ));end);if (v30 and v31 and v31.data) then for v54,v55 in ipairs(v31.data) do if ((v55.playing<v55.maxPlayers) and (v55.id~=v15)) then local v63=0 -0 ;while true do if (v63==(0 + 0)) then v9:TeleportToPlaceInstance(v13,v55.id,v12);return;end end end end end end local function v22() v12.CharacterAdded:Connect(function(v35) local v36=v35:WaitForChild(v7("\158\252\39\202\22\161\58\195","\167\214\137\74\171\120\206\83"));v36.Died:Connect(function() local v50=1130 -(87 + 1043) ;local v51;while true do if (v50==(448 -(10 + 438))) then v51=0 + 0 ;while true do if (v51==(3 -2)) then if (v14>=(3 + 0)) then v21();end break;end if (v51==(1180 -(1123 + 57))) then v14=v14 + 1 + 0 ;v19();v51=255 -(163 + 91) ;end end break;end end end);end);end task.spawn(function() while true do local v37=0;local v38;while true do if (v37==0) then v38=1930 -(1869 + 61) ;while true do if (v38==0) then if ( #v8:GetPlayers()<(2 + 3)) then v21();end task.wait(17 -12 );break;end end break;end end end end);task.spawn(function() while true do if (v12.Character and v12.Character:FindFirstChild(v7("\163\229\63\92\246\168\130\244","\199\235\144\82\61\152"))) then local v56=0 -0 ;local v57;while true do if (v56==0) then v57=v12.Character.Humanoid.Health;if (v57<=(0 + 0)) then local v69=0 -0 ;while true do if (v69==(0 + 0)) then v21();return;end end end break;end end end task.wait(1475 -(1329 + 145) );end end);task.spawn(function() while true do local v39=971 -(140 + 831) ;while true do if (v39==(1850 -(1409 + 441))) then if  not v17 then task.wait(5);v18();if  not v17 then v21();end end task.wait(1);break;end end end end);local function v23() while true do local v40,v41=pcall(function() v9:Teleport(v13,v12);end);if v40 then break;else local v58=718 -(15 + 703) ;local v59;while true do if (v58==(0 + 0)) then v59=0;while true do if (v59==(438 -(262 + 176))) then warn(v7("\53\19\186\36\9\24\188\40\19\86\191\42\14\26\188\47\93\86","\75\103\118\217")   .. v41 );task.wait(1726 -(345 + 1376) );break;end end break;end end end end end game:GetService(v7("\228\91\98\17\158\11\206","\126\167\52\16\116\217")).RobloxPromptGui.ChildAdded:Connect(function(v32) if (v32:IsA(v7("\238\60\33\141\177","\156\168\78\64\224\212\121")) and v32:FindFirstChild(v7("\34\252\183\193\21\195\160\221\20\239\162\203","\174\103\142\197"))) then local v52=688 -(198 + 490) ;local v53;while true do if (v52==0) then v53=0;while true do if (v53==(0 -0)) then task.wait(2);v23();break;end end break;end end end end);task.spawn(function() while true do v19();v11.RenderStepped:Wait();end end);task.spawn(function() while true do local v42=0 -0 ;local v43;while true do if (v42==0) then v43=1206 -(696 + 510) ;while true do if (v43==(0 -0)) then task.wait(15 * 60 );v21();break;end end break;end end end end);v22();
