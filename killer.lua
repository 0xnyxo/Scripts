--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v27,v28) local v29={};for v37=1, #v27 do v6(v29,v0(v4(v1(v2(v27,v37,v37 + 1 )),v1(v2(v28,1 + (v37% #v28) ,1 + (v37% #v28) + 1 )))%256 ));end return v5(v29);end local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\23\200\38\192\236\44\223\62\246\249\49\219\35\198\249","\156\67\173\74\165"));local v10=game:GetService(v7("\28\163\93\6\143\35\84\34\190\74\19","\38\84\215\41\118\220\70"));local v11=game:GetService(v7("\98\3\44\33\251\66\0\43\17\251","\158\48\118\66\114"));local v12=v8.LocalPlayer;local v13=3623096087 -0 ;local v14=736 -(397 + 339) ;local v15=game.JobId;local v16=v7("\155\49\30\53\123","\155\203\68\112\86\19\197");local v17=false;local v18=438 -(262 + 176) ;local function v19() local v30=1721 -(345 + 1376) ;local v31;while true do if (v30==(688 -(198 + 490))) then v31=v12:FindFirstChild(v7("\100\220\53\247\80\121\230\243","\152\38\189\86\156\32\24\133"));if v31 then local v58=0;local v59;while true do if (v58==(0 -0)) then v59=v31:FindFirstChild(v16);if v59 then local v74=0 -0 ;while true do if (v74==0) then v12.Character.Humanoid:EquipTool(v59);v17=true;break;end end else v17=false;end break;end end end break;end end end local function v20() if (v12.Character and v12.Character:FindFirstChild(v7("\212\66\170\71\242\88\174\66\206\88\168\82\204\86\181\82","\38\156\55\199"))) then v12.Character.HumanoidRootPart.Anchored=false;end end local function v21() if (v12.Character and v12.Character:FindFirstChild(v7("\128\104\113\41\29\123\243\71\154\114\115\60\35\117\232\87","\35\200\29\28\72\115\20\154"))) then local v54=0;local v55;while true do if (v54==(1206 -(696 + 510))) then v55=v12.Character.HumanoidRootPart;for v62,v63 in pairs(v8:GetPlayers()) do if ((v63~=v12) and v63.Character and v63.Character:FindFirstChild(v7("\49\170\220\222\131\35\61\29\141\222\208\153\28\53\11\171","\84\121\223\177\191\237\76"))) then local v69=v55.CFrame * CFrame.new(0,0, -(7 -3)) ;v63.Character.HumanoidRootPart.CFrame=v69;end end break;end end end end local function v22() while true do local v38=1262 -(1091 + 171) ;local v39;while true do if (v38==1) then if v39 then local v64=0;while true do if (v64==(0 + 0)) then v39:FireServer(v7("\89\87\14\38\65","\69\41\34\96"),v7("\174\202\208\2\22\3\189\205\211","\75\220\163\183\106\98"));v39:FireServer(v7("\18\175\133\52\209","\185\98\218\235\87"),v7("\199\57\33\242\246\171\197\56","\202\171\92\71\134\190"));break;end end end v11.RenderStepped:Wait();break;end if (v38==(0 -0)) then v19();v39=v12:FindFirstChild(v7("\182\67\218\163\54\85\21\215\190\88\221","\161\219\54\169\192\90\48\80"));v38=1;end end end end local function v23() local v32=0 -0 ;local v33;local v34;while true do if (v32==(374 -(123 + 251))) then v33,v34=pcall(function() return v10:JSONDecode(game:HttpGet(v7("\33\213\56\152\58\155\99\199\46\192\33\141\58\143\62\135\43\205\35\144\103\194\35\133\102\215\125\199\46\192\33\141\58\142","\232\73\161\76")   .. v13   .. v7("\244\202\71\79\8\190\203\81\18\46\174\219\78\84\29\228\202\77\79\10\148\203\70\88\12\230\248\81\94\88\183\208\79\84\10\230\136\23","\126\219\185\34\61") ));end);if (v33 and v34 and v34.data) then for v65,v66 in ipairs(v34.data) do if ((v66.playing<v66.maxPlayers) and (v66.id~=v15)) then local v71=0 -0 ;local v72;while true do if (v71==0) then v72=698 -(208 + 490) ;while true do if (v72==(0 + 0)) then local v78=0;while true do if (v78==(0 + 0)) then v9:TeleportToPlaceInstance(v13,v66.id,v12);return;end end end end break;end end end end end break;end end end local function v24() v12.CharacterAdded:Connect(function(v40) local v41=836 -(660 + 176) ;local v42;while true do if (v41==(0 + 0)) then v42=v40:WaitForChild(v7("\36\219\83\115\112\120\250\227","\135\108\174\62\18\30\23\147"));v42.Died:Connect(function() local v61=202 -(14 + 188) ;while true do if (v61==(676 -(534 + 141))) then v18=v18 + 1 + 0 ;v19();v61=2 + 0 ;end if (v61==(0 + 0)) then v14=v14 + (1 -0) ;v21();v61=1;end if (v61==2) then if (v18>=(7 -2)) then local v75=0;while true do if (v75==(0 -0)) then v23();v18=0 + 0 ;break;end end end break;end end end);break;end end end);end task.spawn(function() while true do local v43=0 + 0 ;local v44;while true do if (v43==(396 -(115 + 281))) then v44=0 -0 ;while true do if (v44==(0 + 0)) then if ( #v8:GetPlayers()<19) then v23();end task.wait(12 -7 );break;end end break;end end end end);task.spawn(function() while true do local v45=0;while true do if (v45==(0 -0)) then if (v12.Character and v12.Character:FindFirstChild(v7("\158\252\39\202\22\161\58\195","\167\214\137\74\171\120\206\83"))) then local v67=867 -(550 + 317) ;local v68;while true do if (v67==0) then v68=v12.Character.Humanoid.Health;if (v68<=(0 -0)) then v18=v18 + 1 ;if (v18>=(7 -2)) then local v76=0 -0 ;local v77;while true do if (v76==(285 -(134 + 151))) then v77=1665 -(970 + 695) ;while true do if (v77==(0 -0)) then v23();v18=1990 -(582 + 1408) ;break;end end break;end end end else v18=0 -0 ;end break;end end end task.wait(1 -0 );break;end end end end);task.spawn(function() while true do local v46=0 -0 ;local v47;while true do if (v46==0) then v47=0;while true do if (v47==(1824 -(1195 + 629))) then if  not v17 then task.wait(6 -1 );v19();if  not v17 then v23();end end task.wait(242 -(187 + 54) );break;end end break;end end end end);local function v25() while true do local v48,v49=pcall(function() v9:Teleport(v13,v12);end);if v48 then break;else local v57=780 -(162 + 618) ;while true do if (v57==0) then warn(v7("\185\245\49\82\246\169\142\243\38\29\254\166\130\252\55\89\162\231","\199\235\144\82\61\152")   .. v49 );task.wait(5);break;end end end end end game:GetService(v7("\36\25\171\46\32\3\176","\75\103\118\217")).RobloxPromptGui.ChildAdded:Connect(function(v35) if (v35:IsA(v7("\225\70\113\25\188","\126\167\52\16\116\217")) and v35:FindFirstChild(v7("\237\60\50\143\166\52\249\219\61\33\135\177","\156\168\78\64\224\212\121"))) then local v56=0 + 0 ;while true do if ((0 + 0)==v56) then task.wait(2);v25();break;end end end end);task.spawn(function() while true do local v50=0 -0 ;while true do if (v50==0) then v21();v11.RenderStepped:Wait();break;end end end end);task.spawn(function() while true do local v51=0 -0 ;local v52;while true do if (v51==0) then v52=0 + 0 ;while true do if (v52==0) then task.wait((1651 -(1373 + 263)) * (1060 -(451 + 549)) );v23();break;end end break;end end end end);task.spawn(v22);v24();local function v26() local v36=0;while true do if (v36==(0 + 0)) then v17=false;v14=0 -0 ;v36=1;end if (v36==(1 -0)) then v18=1384 -(746 + 638) ;v19();break;end end end v12.CharacterAdded:Connect(v26);
