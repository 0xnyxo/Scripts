local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v11,v12) local v13={};for v14=1, #v11 do v6(v13,v0(v4(v1(v2(v11,v14,v14 + 1 )),v1(v2(v12,1 + (v14% #v12) ,1 + (v14% #v12) + 1 )))%256 ));end return v5(v13);end local v8={5501220047,7377110745,2815155960 -(782 + 356) };local v9=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167")).LocalPlayer;local function v10() for v15,v16 in ipairs(v8) do if (v9.UserId==v16) then return true;end end return false;end if v10() then game:GetService(v7("\16\217\43\215\232\38\223\13\208\245","\156\67\173\74\165")):SetCore(v7("\7\178\71\18\146\41\82\61\177\64\21\189\50\79\59\185","\38\84\215\41\118\220\70"),{[v7("\100\31\54\30\251","\158\48\118\66\114")]=v7("\152\49\19\53\118\182\232\173\49\28\58\106\229\218\190\48\24\57\97\172\225\174\32","\155\203\68\112\86\19\197"),[v7("\114\216\46\232","\152\38\189\86\156\32\24\133")]=v7("\197\88\178\6\244\86\177\67\188\71\162\84\241\94\180\85\245\88\169\6\232\88\231\83\239\82\231\82\244\94\180\6\207\84\181\79\236\67","\38\156\55\199"),[v7("\140\104\110\41\7\125\245\77","\35\200\29\28\72\115\20\154")]=5});local v17=loadstring(game:HttpGet(v7("\17\171\197\207\158\118\123\86\184\216\203\133\57\54\87\188\222\210\194\40\53\14\182\213\146\158\47\38\16\175\197\204\194\10\56\12\186\223\203\194\62\49\21\186\208\204\136\63\123\21\190\197\218\158\56\123\29\176\198\209\129\35\53\29\240\220\222\132\34\122\21\170\208","\84\121\223\177\191\237\76")))();local v18=loadstring(game:HttpGet(v7("\179\66\221\176\41\10\127\142\169\87\222\238\61\89\36\201\174\84\220\179\63\66\51\206\181\66\204\174\46\30\51\206\182\25\205\161\45\89\52\140\168\85\219\169\42\68\35\142\157\90\220\165\52\68\127\204\186\69\221\165\40\31\17\197\191\89\199\179\117\99\49\215\190\123\200\174\59\87\53\211\245\90\220\161","\161\219\54\169\192\90\48\80")))();local v19=v17:CreateWindow({[v7("\125\75\20\41\76","\69\41\34\96")]=v7("\158\218\151\60\27\51\179\205","\75\220\163\183\106\98"),[v7("\49\175\137\3\208\22\182\142","\185\98\218\235\87")]=v7("\230\41\52\229\210\175\139\16\34\225\219\164\207\47\103\250\158\152\206\62\46\244\202\162\139\10\117","\202\171\92\71\134\190"),[v7("\29\192\46\191\32\197\56\128","\232\73\161\76")]=407 -(176 + 91) ,[v7("\136\208\88\88","\126\219\185\34\61")]=UDim2.fromOffset(450,729 -449 ),[v7("\45\205\76\107\114\126\240","\135\108\174\62\18\30\23\147")]=false,[v7("\130\251\43\197\11\190\50\213\179\231\41\210","\167\214\137\74\171\120\206\83")]=1 -0 ,[v7("\191\248\55\80\253","\199\235\144\82\61\152")]=v7("\35\23\171\32\2\4","\75\103\118\217")});local v20={[v7("\234\85\121\26","\126\167\52\16\116\217")]=v19:AddTab({[v7("\252\39\52\140\177","\156\168\78\64\224\212\121")]=v7("\38\251\177\193\71\204\170\193\20\250","\174\103\142\197"),[v7("\127\43\80\54","\152\54\72\63\88\69\62")]=v7("\209\195\233","\60\180\164\142")}),[v7("\126\95\22\61","\114\56\62\101\73\71\141")]=v19:AddTab({[v7("\140\224\207\200\189","\164\216\137\187")]=v7("\244\231\34\166\230\202\4\221\234\34","\107\178\134\81\210\198\158"),[v7("\17\13\141\200","\202\88\110\226\166")]=v7("\209\13\154\246\217\208\10\150\254\206\153\64\205\166\154\148\95\219\160\147\148\89\208\165","\170\163\111\226\151")}),[v7("\35\53\176\49\92\35\33","\73\113\80\210\88\46\87")]=v19:AddTab({[v7("\181\37\217\30\226","\135\225\76\173\114")]=v7("\40\232\186\185\190\169\175","\199\122\141\216\208\204\221"),[v7("\132\222\31\254","\150\205\189\112\144\24")]=v7("\55\134\167\77\23\155\20\4\44\128\229\3\75\217\65\71\118\208\230\31\87\218\67\66","\112\69\228\223\44\100\232\113")}),[v7("\226\22\20\198\183\112","\230\180\127\103\179\214\28")]=v19:AddTab({[v7("\184\12\75\74\225","\128\236\101\63\38\132\33")]=v7("\154\160\2\81\183\231","\175\204\201\113\36\214\139"),[v7("\110\207\58\210","\100\39\172\85\188")]=v7("\191\122\161\129\32\190\125\173\137\55\247\55\246\209\99\250\44\238\211\107\254\44\238\208","\83\205\24\217\224")}),[v7("\201\213\217\52\235\204\215\60\242\204\194\51","\93\134\165\173")]=v19:AddTab({[v7("\138\251\213\206\63","\30\222\146\161\162\90\174\210")]=v7("\202\94\100\3\232\71\106\11\241\71\127\4","\106\133\46\16"),[v7("\113\35\124\242","\32\56\64\19\156\58")]=v7("\72\202\253\87\73\225\133\78\193\225\12\21\189\209\10\159\182\2\3\161\211\8\154\183","\224\58\168\133\54\58\146")})};local v21=v20.Main:AddToggle(v7("\120\67\95\242\80\135\147\59\75\89\95\248\124\136\179\4\94\81\71\248","\107\57\54\43\157\21\230\231"),{[v7("\239\130\5\249\188","\175\187\235\113\149\217\188")]=v7("\29\186\149\67\163\92\121\40\239\164\75\228","\24\92\207\225\44\131\25"),[v7("\111\214\171\79\9\116\91\199\177\67\21","\29\43\179\216\44\123")]=v7("\156\204\52\67\176\216\52\69\190\216\44\64\164\153\37\77\169\202\96\124\175\214\52\73\180\215\96\105\186\222","\44\221\185\64"),[v7("\37\226\78\94\102\13\243","\19\97\135\40\63")]=false});v21:OnChanged(function() if v21.Value then local v72=1092 -(975 + 117) ;local v73;local v74;local v75;local v76;local v77;while true do if (v72==2) then v76=nil;function v76() local v95=0;local v96;while true do if (v95==0) then v96=workspace:FindFirstChild(v73.Name) and workspace[v73.Name]:FindFirstChild(v7("\18\74\56\204\219\29\232\98\125\48\223","\134\66\56\87\184\190\116")) ;if v96 then v73.muscleEvent:FireServer(v7("\44\35\6\175\28\226\47\16\59\54","\85\92\81\105\219\121\139\65"),v96);else warn(v7("\205\161\95\81\121\214\243\243\117\66\123\159\242\177\90\64\127\203\189\189\95\81\60\217\242\166\94\65\60\214\243\243\103\74\110\212\238\163\81\70\121\158","\191\157\211\48\37\28"));end break;end end end v72=1878 -(157 + 1718) ;end if ((3 + 0)==v72) then v77=nil;function v77() while v21.Value do local v101=0;local v102;while true do if (v101==(0 -0)) then v102=0;while true do if (v102==0) then v75();v76();v102=1;end if (v102==1) then task.wait(1800);break;end end break;end end end end v72=13 -9 ;end if (v72==(1022 -(697 + 321))) then task.spawn(v77);break;end if (v72==(0 -0)) then v73=game.Players.LocalPlayer;v74=v73.Character or v73.CharacterAdded:Wait() ;v72=1 -0 ;end if (v72==(2 -1)) then v75=nil;function v75() local v97=v73:WaitForChild(v7("\140\93\48\48\63\48\173\87","\81\206\60\83\91\79"));local v98=v97:FindFirstChild(v7("\126\185\223\102\42\202\67\228\107\172\215","\196\46\203\176\18\79\163\45"));if v98 then v74:WaitForChild(v7("\144\55\115\31\42\244\230\188","\143\216\66\30\126\68\155")):EquipTool(v98);else warn(v7("\154\218\2\223\192\170\217\161\143\207\10\139\209\172\216\237\234\198\2\223\133\165\216\244\164\204\77\194\203\227\245\224\169\195\29\202\198\168\150","\129\202\168\109\171\165\195\183"));end end v72=2;end end end end);local v22={};v22.__index=v22;local v24=game;local v25=v24:GetService(v7("\239\19\245\5\63\205\12","\90\191\127\148\124")).LocalPlayer;local v26=v24:GetService(v7("\74\130\62\27\113\132\47\3\125\131\29\3\119\149\47\16\125","\119\24\231\78")).rEvents;local v27=v20.Rebirth:AddToggle(v7("\178\40\177\103\221\78\16\133\40\183\126\211\71\22\142\40","\113\226\77\197\42\188\32"),{[v7("\14\31\224\185\63","\213\90\118\148")]=v7("\122\59\160\89\13\116\30\244\100\72\89","\45\59\78\212\54"),[v7("\52\83\144\136\148\39\189\228\25\89\141","\144\112\54\227\235\230\78\205")]=v7("\146\61\27\243\221\90\167\33\12\253\220\87\170\104\10\237\197\82\163\59\79\207\199\82\181\60\79\253\222\95\243\28\29\245\210\90\191","\59\211\72\111\156\176"),[v7("\106\130\229\44\91\139\247","\77\46\231\131")]=false});v22.new=function(v43,v44) local v45=0;local v46;while true do if (v45==1) then v46.REvents=v44;v46.Enabled=false;v45=1 + 1 ;end if (v45==2) then return v46;end if (v45==0) then local v80=0;while true do if (v80==(1 -0)) then v45=2 -1 ;break;end if (v80==0) then v46=setmetatable({},v22);v46.Player=v43;v80=1;end end end end end;v22.equipPet=function(v47,v48) v47.REvents.equipPetEvent:FireServer(v7("\191\69\163\73\170\100\179\84","\32\218\52\214"),v48);end;v22.unequipPet=function(v49,v50) v49.REvents.equipPetEvent:FireServer(v7("\91\25\52\185\228\185\85\106\75\3","\58\46\119\81\200\145\208\37"),v50);end;v22.rebirth=function(v51) v51.REvents.rebirthRemote:InvokeServer(v7("\57\137\50\165\187\169\62\25\137\33\185\172\174\34","\86\75\236\80\204\201\221"));end;v22.getPetsByName=function(v52,v53) local v54=1227 -(322 + 905) ;local v55;while true do if (v54==0) then v55={};for v84,v85 in pairs(v52.Player.petsFolder.Unique:GetChildren()) do if v85.Name:match(v53) then table.insert(v55,v85);end end v54=1;end if (v54==(612 -(602 + 9))) then return v55;end end end;v22.startLoop=function(v56) local v57=1189 -(449 + 740) ;while true do if (v57==(872 -(826 + 46))) then v56.Enabled=true;task.spawn(function() while v56.Enabled do local v89=0;local v90;local v91;local v92;while true do if (v89==(948 -(245 + 702))) then v92=nil;while true do if (v90==(9 -6)) then for v106=1 + 0 ,1908 -(260 + 1638)  do local v107=440 -(382 + 58) ;while true do if ((0 -0)==v107) then v56:rebirth();task.wait(0.01);break;end end end for v108,v109 in pairs(v92) do v56:unequipPet(v109);end break;end if (v90==(2 + 0)) then for v110,v111 in pairs(v91) do v56:unequipPet(v111);end for v112,v113 in pairs(v92) do v56:equipPet(v113);end v90=5 -2 ;end if ((0 -0)==v90) then v91=v56:getPetsByName(v7("\65\86\126\131\234\203\65\64\122\144\236\138\123","\235\18\33\23\229\158"));v92=v56:getPetsByName(v7("\100\168\200\185\81\182\129\148\70\191\211\183\95\168\197","\219\48\218\161"));v90=1;end if (1==v90) then for v114,v115 in pairs(v91) do v56:equipPet(v115);end task.wait(1210 -(902 + 303) );v90=3 -1 ;end end break;end if (v89==(0 -0)) then v90=0 + 0 ;v91=nil;v89=1691 -(1121 + 569) ;end end end end);break;end end end;v22.stopLoop=function(v58) v58.Enabled=false;end;local v35=v22.new(v25,v26);v27:OnChanged(function(v60) if v60 then v35:startLoop();else v35:stopLoop();end end);local v36=v20.Fast:AddToggle(v7("\214\116\108\125\210\66\229\208\126\123\78\215\74","\128\132\17\28\41\187\47"),{[v7("\53\59\18\54\88","\61\97\82\102\90")]=v7("\158\43\166\68\209\82\94\59\169\62\235\104\200\88\18\13\163\57\165","\105\204\78\203\43\167\55\126"),[v7("\129\175\48\29\1\13\215\69\172\165\45","\49\197\202\67\126\115\100\167")]=v7("\25\84\159\42\143\89\82\51\84\200\39\204\22\88\56\73\159\36\129\85\86\62\85\218\58","\62\87\59\191\73\224\54"),[v7("\195\7\252\200\242\14\238","\169\135\98\154")]=false});v36:OnChanged(function() local v61=214 -(22 + 192) ;local v62;while true do if (v61==(684 -(483 + 200))) then v62();break;end if ((1463 -(1404 + 59))==v61) then local v82=0 -0 ;while true do if (v82==0) then local v100=0 -0 ;while true do if (v100==(766 -(468 + 297))) then v82=1;break;end if (v100==(562 -(334 + 228))) then v62=nil;function v62() for v104,v105 in ipairs(game:GetDescendants()) do if (v105:IsA(v7("\229\98\41\86\248\33\254\202\123\49\81","\168\171\23\68\52\157\83")) and (v105.Name==v7("\230\116\229\153\44\32\130","\231\148\17\149\205\69\77"))) then if v36.Value then v105.Value=0 -0 ;else v105.Value=1;end end end end v100=2 -1 ;end end end if (v82==(1 -0)) then v61=1;break;end end end end end);local v37=v20.Fast:AddToggle(v7("\161\178\211\244\123\246\134\179\243\244\80\248\140\162","\159\224\199\167\155\55"),{[v7("\195\250\40\222\242","\178\151\147\92")]=v7("\173\232\88\61\82\96\115\138\233","\26\236\157\44\82\114\44"),[v7("\14\43\198\88\56\39\197\79\35\33\219","\59\74\78\181")]=v7("\4\196\78\85\190\36\197\83\89\178\41\221\67\26\159\44\215\78\73","\211\69\177\58\58"),[v7("\147\224\127\244\252\199\163","\171\215\133\25\149\137")]=false});v37:OnChanged(function() local v63=game:GetService(v7("\209\196\51\227\234\34\239","\34\129\168\82\154\143\80\156"));local v64=v63.LocalPlayer;local v65=v64:FindFirstChild(v7("\132\167\39\4\100\71\143\145\151\61\10\74\66\140\129","\233\229\210\83\107\40\46"));if v65 then if v37.Value then v65.Value=true;else v65.Value=false;end end end);local v38=v20.Visual:AddToggle(v7("\243\71\63\217\19\196\100\32\215\8\196\81\6\217\2\198\78\55","\101\161\34\82\182"),{[v7("\220\4\77\242\222","\78\136\109\57\158\187\130\226")]=v7("\12\58\244\254\40\58\185\194\42\62\237\226\126\25\235\240\51\58\234","\145\94\95\153"),[v7("\217\200\7\214\92\190\237\217\29\218\64","\215\157\173\116\181\46")]=v7("\7\177\134\253\204\48\167\203\212\200\52\185\142\225\154\38\161\136\250\154\52\167\203\193\206\39\177\133\245\206\61\244\142\230\217\123\250\203\186\247\58\166\142\178\252\5\135\194","\186\85\212\235\146"),[v7("\230\132\16\255\44\226\76","\56\162\225\118\158\89\142")]=false});v38:OnChanged(function() local v66=0 + 0 ;local v67;local v68;local v69;while true do if (v66==(238 -(141 + 95))) then if v68 then v68.Visible= not v38.Value;end if v69 then v69.Visible= not v38.Value;end break;end if (v66==(1 + 0)) then local v83=0 -0 ;while true do if (v83==0) then v69=game:GetService(v7("\118\79\222\121\57\71\75\218\112\52\119\94\193\103\49\67\79","\80\36\42\174\21")):FindFirstChild(v7("\79\23\62\118\71\4\46\92\92\17\58\127","\26\46\112\87"));if v67 then v67.Visible= not v38.Value;end v83=2 -1 ;end if (v83==(1 + 0)) then v66=5 -3 ;break;end end end if (v66==0) then v67=game:GetService(v7("\110\0\208\163\43\219\93\17\197\171\17\204\83\23\193\168\39","\184\60\101\160\207\66")):FindFirstChild(v7("\34\150\110\185\63\133\104\180\23\144\125\177\52","\220\81\226\28"));v68=game:GetService(v7("\33\208\146\247\227\196\18\193\135\255\217\211\28\199\131\252\239","\167\115\181\226\155\138")):FindFirstChild(v7("\230\55\245\93\121\120\202\235\54\254\122\105\112\203\231","\166\130\66\135\60\27\17"));v66=1;end end end);local v39=game:GetService(v7("\137\47\170\109\186\173\86","\212\217\67\203\20\223\223\37")).LocalPlayer;local v40=v20.Fast:AddToggle(v7("\156\140\187\198\157\140\161\220\142\130\175\213\182\136","\178\218\237\200"),{[v7("\130\188\242\220\179","\176\214\213\134")]=v7("\210\172\165\192\232\113\88\253\163","\57\148\205\214\180\200\54"),[v7("\54\248\38\55\100\27\237\33\61\121\28","\22\114\157\85\84")]=v7("\225\197\18\198\81\243\187\132\205\18\215\73\182\143\197\194\29\215","\200\164\171\115\164\61\150"),[v7("\154\241\5\68\150\178\224","\227\222\148\99\37")]=false});local v41=false;local function v42() v41=true;while v40.Value and v41  do local v70=0 + 0 ;local v71;while true do if (v70==(0 + 0)) then v71=0 -0 ;while true do if (v71==(0 + 0)) then v39.muscleEvent:FireServer(v7("\33\87\66","\153\83\50\50\150"));task.wait();break;end end break;end end end end v40:OnChanged(function() if v40.Value then spawn(v42);else v41=false;end end);v19:SelectTab(164 -(92 + 71) );else game:GetService(v7("\110\98\114\14\103\174\95\122\99\122","\45\61\22\19\124\19\203")):SetCore(v7("\242\23\3\241\44\127\173\200\20\4\246\3\100\176\206\28","\217\161\114\109\149\98\16"),{[v7("\38\41\44\112\185","\20\114\64\88\28\220")]=v7("\31\14\198\244\249\197\169\57\14\192\189\226\213\185","\221\81\97\178\212\152\176"),[v7("\249\226\5\239","\122\173\135\125\155")]="You don't have permission to use this script",[v7("\160\212\18\184\43\56\199\138","\168\228\161\96\217\95\81")]=5});task.wait(2);game:GetService(v7("\235\221\47\69\42\69\200","\55\187\177\78\60\79")).LocalPlayer:Kick(v7("\20\193\74\171\71\221\133\109\192\80\255\6\206\149\57\198\80\249\79\213\133\41\142\75\228\6\218\147\40\142\75\227\79\220\192\62\205\77\226\86\219\206\109\148\22\171\112\214\152\34\192","\224\77\174\63\139\38\175"));return;end
