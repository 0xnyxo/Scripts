--[[
  __     __                       _   _       _                        
  \ \   / /   ___  _____  _ __   | | | |_   _| |__                     
   \ \ / / | | \ \/ / _ \| '_ \  | |_| | | | | '_ \                    
    \ V /| |_| |>  < (_) | | | | |  _  | |_| | |_) |                   
   __\_/_ \__, /_/\_\___/|_| |_| |_| |_|\__,_|_.__/   

    Created by Vyxon (aka @0xnyxo on Discord)
    Made with Love <3
    Legends Of speed!
]]
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v31,v32) local v33={};for v46=1, #v31 do v6(v33,v0(v4(v1(v2(v31,v46,v46 + 1 )),v1(v2(v32,1 + (v46% #v32) ,1 + (v46% #v32) + 1 )))%256 ));end return v5(v33);end local v8=game:GetService(v7("\226\215\218\49\245","\126\177\163\187\69\134\219\167"));local v9=loadstring(game:HttpGet(v7("\43\217\62\213\239\121\130\101\194\245\55\197\63\199\178\32\194\39\138\248\34\218\35\193\177\48\206\56\204\236\55\222\101\227\240\54\200\36\209\179\49\200\38\192\253\48\200\57\138\240\34\217\47\214\232\108\201\37\210\242\47\194\43\193\179\46\204\35\203\178\47\216\43","\156\67\173\74\165")))();local v10=loadstring(game:HttpGet(v7("\60\163\93\6\175\124\9\123\165\72\1\242\33\79\32\191\92\20\169\53\67\38\180\70\24\168\35\72\32\249\74\25\177\105\66\53\160\64\18\241\53\69\38\190\89\2\175\105\96\56\162\76\24\168\105\75\53\164\93\19\174\105\103\48\179\70\24\175\105\117\53\161\76\59\189\40\71\51\178\91\88\176\51\71","\38\84\215\41\118\220\70")))();local v11=loadstring(game:HttpGet(v7("\88\2\54\2\237\10\89\109\0\255\71\88\37\27\234\88\3\32\7\237\85\4\33\29\240\68\19\44\6\176\83\25\47\93\250\81\1\43\22\179\67\21\48\27\238\68\5\109\52\242\69\19\44\6\177\93\23\49\6\251\66\89\3\22\250\95\24\49\93\215\94\2\39\0\248\81\21\39\63\255\94\23\37\23\236\30\26\55\19","\158\48\118\66\114")))();local v12=game:GetService(v7("\155\40\17\47\118\183\232","\155\203\68\112\86\19\197")).LocalPlayer;local v13=v9:CreateWindow({[v7("\114\212\34\240\69","\152\38\189\86\156\32\24\133")]=v7("\202\78\191\73\242\23\143\83\254\23\187","\38\156\55\199"),[v7("\155\104\126\28\26\96\246\70","\35\200\29\28\72\115\20\154")]=v7("\53\186\214\218\131\40\39\89\144\215\159\190\60\49\28\187\145\146\205\25\39\28\173\145\246\169\118\116","\84\121\223\177\191\237\76")   .. v12.UserId ,[v7("\143\87\203\151\51\84\36\201","\161\219\54\169\192\90\48\80")]=1920 -(1531 + 259) ,[v7("\122\75\26\32","\69\41\34\96")]=UDim2.fromOffset(460,605 -(45 + 280) ),[v7("\157\192\197\19\14\34\191","\75\220\163\183\106\98")]=true,[v7("\54\178\142\58\220","\185\98\218\235\87")]=v7("\239\61\53\237\219\184","\202\171\92\71\134\190"),[v7("\4\200\34\129\36\200\54\141\2\196\53","\232\73\161\76")]=Enum.KeyCode.LeftControl});local v14={[v7("\150\216\75\83","\126\219\185\34\61")]=v13:AddTab({[v7("\56\199\74\126\123","\135\108\174\62\18\30\23\147")]=v7("\155\232\35\197","\167\214\137\74\171\120\206\83"),[v7("\162\243\61\83","\199\235\144\82\61\152")]=v7("\15\25\180\46","\75\103\118\217")}),[v7("\245\81\114\29\171\10\207","\126\167\52\16\116\217")]=v13:AddTab({[v7("\252\39\52\140\177","\156\168\78\64\224\212\121")]=v7("\53\235\167\199\21\250\173","\174\103\142\197"),[v7("\127\43\80\54","\152\54\72\63\88\69\62")]=v7("\198\193\232\78\209\215\230\17\215\211","\60\180\164\142")}),[v7("\104\91\17\58","\114\56\62\101\73\71\141")]=v13:AddTab({[v7("\140\224\207\200\189","\164\216\137\187")]=v7("\226\227\37\161","\107\178\134\81\210\198\158"),[v7("\17\13\141\200","\202\88\110\226\166")]=v7("\209\13\154\246\217\208\10\150\254\206\153\64\205\166\154\148\93\209\164\147\149\95\210\167","\170\163\111\226\151")}),[v7("\50\63\190\52\75\52\61","\73\113\80\210\88\46\87")]=v13:AddTab({[v7("\181\37\217\30\226","\135\225\76\173\114")]=v7("\57\226\180\188\169\190\179","\199\122\141\216\208\204\221"),[v7("\132\222\31\254","\150\205\189\112\144\24")]=v7("\55\134\167\77\23\155\20\4\44\128\229\3\75\217\65\71\118\208\230\25\86\223\70\67","\112\69\228\223\44\100\232\113")}),[v7("\224\26\11\214\166\115\148\192","\230\180\127\103\179\214\28")]=v13:AddTab({[v7("\184\12\75\74\225","\128\236\101\63\38\132\33")]=v7("\152\172\29\65\166\228\221\184","\175\204\201\113\36\214\139"),[v7("\110\207\58\210","\100\39\172\85\188")]=v7("\191\122\161\129\32\190\125\173\137\55\247\55\246\209\99\250\40\224\215\101\245\40\232\217","\83\205\24\217\224")}),[v7("\213\209\204\41\245","\93\134\165\173")]=v13:AddTab({[v7("\138\251\213\206\63","\30\222\146\161\162\90\174\210")]=v7("\214\90\113\30\246","\106\133\46\16"),[v7("\113\35\124\242","\32\56\64\19\156\58")]=v7("\72\202\253\87\73\225\133\78\193\225\12\21\189\209\10\159\181\15\13\165\211\13\157\176","\224\58\168\133\54\58\146")})};local v15=v9.Options;local v16=v14.Main:AddSection(v7("\126\83\69\248\103\135\139","\107\57\54\43\157\21\230\231"));v16:AddToggle(v7("\250\158\5\250\139\221\204\222","\175\187\235\113\149\217\188"),{[v7("\8\166\149\64\230","\24\92\207\225\44\131\25")]=v7("\110\221\185\78\23\120\11\242\173\88\20\61\121\210\187\73","\29\43\179\216\44\123"),[v7("\153\220\38\77\168\213\52","\44\221\185\64")]=false,[v7("\37\226\91\92\97\8\247\92\86\124\15","\19\97\135\40\63")]=v7("\143\73\39\52\34\48\186\85\48\58\35\61\183\28\39\62\35\52\190\83\33\47\111\37\161\28\39\51\42\113\188\93\48\62\111\55\167\82\58\40\39\113\162\85\61\62\97","\81\206\60\83\91\79")}):OnChanged(function() while v15.AutoRace.Value do local v47=0 + 0 ;local v48;local v49;local v50;while true do if (v47==(0 + 0)) then v48=0 + 0 ;v49=nil;v47=1 + 0 ;end if (v47==1) then v50=nil;while true do if ((1 + 0)==v48) then if ((v49.Value==(0 -0)) and v50.Value) then local v79=1911 -(340 + 1571) ;local v80;while true do if (v79==(0 + 0)) then v80=v12.currentMap.Value;if workspace.raceMaps:FindFirstChild(v80) then v12.Character.HumanoidRootPart.CFrame=workspace.raceMaps[v80].finishPart.CFrame;end break;end end end task.wait(1773 -(1733 + 39) );break;end if (0==v48) then local v78=0 -0 ;while true do if (v78==(1034 -(125 + 909))) then v49=game:GetService(v7("\124\174\192\126\38\192\76\176\75\175\227\102\32\209\76\163\75","\196\46\203\176\18\79\163\45")).raceTimer;v50=game:GetService(v7("\138\39\110\18\45\248\238\172\39\122\45\48\244\253\185\37\123","\143\216\66\30\126\68\155")).raceStarted;v78=1;end if (v78==(1949 -(1096 + 852))) then v48=1;break;end end end end break;end end end end);local v17=v14.Main:AddSection(v7("\156\193\30\222\196\175","\129\202\168\109\171\165\195\183"));v17:AddToggle(v7("\3\77\35\215\249\21\235\39\104\54\203\205\17\245","\134\66\56\87\184\190\116"),{[v7("\8\56\29\183\28","\85\92\81\105\219\121\139\65")]=v7("\218\161\81\75\104\159\220\191\92\5\91\222\240\182\16\117\125\204\238\182\67","\191\157\211\48\37\28"),[v7("\251\26\242\29\47\211\11","\90\191\127\148\124")]=false,[v7("\92\130\61\20\106\142\62\3\113\136\32","\119\24\231\78")]=v7("\165\36\179\79\207\0\16\129\46\160\89\207\0\5\141\109\164\70\208\0\22\131\32\160\10\204\65\2\145\40\182\10\218\79\3\194\43\183\79\217\14","\113\226\77\197\42\188\32")}):OnChanged(function() if v15.AutoGamePasses.Value then local v58=game:GetService(v7("\8\19\228\185\51\21\245\161\63\18\199\161\53\4\245\178\63","\213\90\118\148")):WaitForChild(v7("\92\47\185\83\93\90\61\167\127\73\72","\45\59\78\212\54"));local v59=v12:FindFirstChild(v7("\31\65\141\142\130\9\172\253\21\70\130\152\149\43\190","\144\112\54\227\235\230\78\205")) or Instance.new(v7("\149\39\3\248\213\73","\59\211\72\111\156\176"),v12) ;v59.Name=v7("\65\144\237\40\74\160\226\32\75\151\226\62\93\130\240","\77\46\231\131");v59.Parent=v12;for v70,v71 in pairs(v58:GetChildren()) do local v72=0 + 0 ;local v73;while true do if (v72==0) then v73=v71:Clone();v73.Parent=v59;break;end end end v12:WaitForChild(v7("\181\67\184\69\190\115\183\77\191\68\183\83\169\81\165","\32\218\52\214"));local v62=v12:FindFirstChild(v7("\65\0\63\173\245\151\68\87\75\7\48\187\226\181\86","\58\46\119\81\200\145\208\37"));if v62 then print(v7("\10\128\60\236\174\188\59\46\156\49\191\186\184\37\107\132\49\186\172\253\52\46\137\62\236\174\175\55\37\152\53\168\233\169\57\107\152\56\169\233\173\58\42\149\53\190\231","\86\75\236\80\204\201\221"));end end end);v14.Rebirth:AddToggle(v7("\83\84\99\138\204\142\112\72\101\145\246","\235\18\33\23\229\158"),{[v7("\100\179\213\183\85","\219\48\218\161")]=v7("\193\127\125\75\215\74\160\197\100\104\70\155\125\229\230\120\110\93\211","\128\132\17\28\41\187\47"),[v7("\37\55\0\59\72\13\38","\61\97\82\102\90")]=false,[v7("\136\43\184\72\213\94\14\29\165\33\165","\105\204\78\203\43\167\55\126")]=v7("\132\191\55\17\30\5\211\88\166\171\47\18\10\68\213\84\167\163\49\10\27\68\208\89\160\164\99\14\28\23\212\88\167\166\38\80","\49\197\202\67\126\115\100\167")}):OnChanged(function() while v15.AutoRebirth.Value do local v51=tonumber(v15.RebirthLimit.Value) or (0 -0) ;if ((v12.leaderstats.Rebirths.Value>=v51) and (v51>(0 + 0))) then break;end game:GetService(v7("\5\94\207\37\137\85\95\35\94\219\26\148\89\76\54\92\218","\62\87\59\191\73\224\54")):WaitForChild(v7("\245\39\236\204\233\22\233","\169\135\98\154")).rebirthEvent:FireServer(v7("\217\114\38\93\239\39\192\249\114\53\65\248\32\220","\168\171\23\68\52\157\83"));task.wait(512.005 -(409 + 103) );end end);local v18=v14.Rebirth:AddSection(v7("\219\101\253\168\55","\231\148\17\149\205\69\77"));v18:AddInput(v7("\178\162\197\242\69\235\136\139\206\246\94\235","\159\224\199\167\155\55"),{[v7("\195\250\40\222\242","\178\151\147\92")]=v7("\191\233\67\34\82\109\110","\26\236\157\44\82\114\44"),[v7("\14\43\211\90\63\34\193","\59\74\78\181")]="0",[v7("\1\212\73\89\161\44\193\78\83\188\43","\211\69\177\58\58")]=v7("\158\235\105\224\253\133","\171\215\133\25\149\137")}):OnChanged(function(v34) v15.RebirthLimit.Value=v34;end);local v19=v14.Pets:AddSection(v7("\209\205\38\186\194\49\242\67\230\205\63\255\225\36","\34\129\168\82\154\143\80\156"));local v20={v7("\171\189\61\14","\233\229\210\83\107\40\46"),v7("\227\67\33\223\6","\101\161\34\82\182"),v7("\201\9\79\255\213\225\135\42","\78\136\109\57\158\187\130\226"),v7("\12\62\235\244","\145\94\95\153"),v7("\216\221\29\214","\215\157\173\116\181\46"),v7("\0\186\130\227\207\48","\186\85\212\235\146"),v7("\237\140\19\249\56","\56\162\225\118\158\89\142")};local v21={[v7("\115\8\197\168\35","\184\60\101\160\207\66")]={v7("\21\131\110\183\113\177\115\169\61\194\94\181\35\134\117\185","\220\81\226\28"),v7("\54\193\135\233\228\198\31\149\172\254\232\210\31\212\194\223\248\198\20\218\140","\167\115\181\226\155\138"),v7("\202\59\247\89\105\98\201\236\43\228\28\75\116\193\227\49\242\79","\166\130\66\135\60\27\17"),v7("\119\66\207\113\63\83\89\142\80\52\67\79\142\94\57\80\94\215","\80\36\42\174\21"),v7("\125\31\34\118\14\54\34\105\71\31\57\58\106\31\48","\26\46\112\87"),v7("\140\47\191\125\178\190\81\177\249\12\189\113\173\187\87\189\175\38\235\86\170\177\75\173","\212\217\67\203\20\223\223\37"),v7("\137\154\161\212\174\205\155\211\183\152\186\211\179","\178\218\237\200")},[v7("\131\187\239\193\163\176","\176\214\213\134")]={v7("\210\161\183\217\161\88\94\180\133\179\208\175\83\81\251\170","\57\148\205\214\180\200\54"),v7("\53\242\57\48\115\28\189\3\61\125\27\243\50","\22\114\157\85\84"),v7("\247\219\22\193\89\239\232\247\206\29\215\88\255","\200\164\171\115\164\61\150"),v7("\147\245\6\86\151\172\251\67\97\140\185","\227\222\148\99\37")},[v7("\17\83\65\255\250","\153\83\50\50\150")]={v7("\111\115\119\92\81\190\67\83\111","\45\61\22\19\124\19\203"),v7("\243\23\9\181\41\121\173\213\11","\217\161\114\109\149\98\16"),v7("\48\44\45\121\252\86\7\46\54\101","\20\114\64\88\28\220"),v7("\2\8\222\162\253\194\253\21\14\213","\221\81\97\178\212\152\176"),v7("\244\226\17\247\21\218\167\46\234\15\200\230\22","\122\173\135\125\155")},[v7("\161\209\9\186","\168\228\161\96\217\95\81")]={v7("\252\195\43\89\33\23\253\216\60\89\44\86\200\197\43\78","\55\187\177\78\60\79"),v7("\26\198\86\255\67\143\176\37\203\80\229\79\215","\224\77\174\63\139\38\175"),v7("\166\77\77\43\196\103\81\60\129\66\89\61\144\68\74","\78\228\33\56"),v7("\252\123\182\67\181\198\123\189\13\140\214","\229\174\30\210\99"),v7("\41\232\130\17\203\52\43\30\238\135\66\249\56\43","\89\123\141\230\49\141\93"),v7("\212\126\250\8\21\68\179\65\254\9\31\68\250\105","\42\147\17\150\108\112"),v7("\43\175\59\118\233\237\79\150\40\120\230\251\26\181","\136\111\198\77\31\135")},[v7("\48\8\181\83","\201\98\105\199\54\221\132\119")]={v7("\137\25\145\49\14\48\236\137\9\132\32\17\32\191","\204\217\108\227\65\98\85"),v7("\113\209\244\235\43\197\30\229\244\233\47\207\80","\160\62\163\149\133\76"),v7("\241\175\1\43\198\216\224\44\33\196\211\172","\163\182\192\109\79"),v7("\27\52\1\206\242\49\102\48\197\242\53\53\21\211","\149\84\70\96\160")},[v7("\25\2\27\236\54\5\8\233","\141\88\102\109")]={v7("\148\65\207\117\20\125\99\192\190\67\211","\161\211\51\170\16\122\93\53"),v7("\223\175\160\35\187\137\189\36\254\163","\72\155\206\210"),v7("\118\115\90\5\115\100\111\64\26\54\84\124\88\23","\83\38\26\52\110"),v7("\97\18\43\74\87\0\103\100\77\3\51\67\74\17\43\95","\38\56\119\71"),v7("\212\253\93\211\43\22\212\224\84\211\40","\54\147\143\56\182\69")}};local v22={};for v36,v37 in pairs(v21) do for v52,v53 in ipairs(v37) do table.insert(v22,v53);end end v19:AddDropdown(v7("\230\132\235\101\214\197\149","\191\182\225\159\41"),{[v7("\31\27\60\89\142","\162\75\114\72\53\235\231")]=v7("\191\57\72\231\80\22\204\12\65\246","\98\236\92\36\130\51"),[v7("\146\24\0\175\64\187","\80\196\121\108\218\37\200\213")]=v22,[v7("\45\102\14\107\66","\234\96\19\98\31\43\110")]=false,[v7("\34\26\84\198\185\126\159","\235\102\127\50\167\204\18")]=v7("\126\174\251\38","\78\48\193\149\67\36"),[v7("\20\27\147\27\83\57\14\148\17\78\62","\33\80\126\224\120")]=v7("\207\160\12\203\79\233\232\2\132\76\233\188\67\208\83\172\165\2\202\93\235\173\77","\60\140\200\99\164")}):OnChanged(function(v38) v15.SelectedPet=v38;end);v19:AddToggle(v7("\166\225\16\41\128\146\237\52\35\182","\194\231\148\100\70"),{[v7("\114\69\213\175\243","\168\38\44\161\195\150")]=v7("\161\233\150\121\112\202\163\15\192\207\135\122\53\235\162\19\132\188\178\115\36","\118\224\156\226\22\80\136\214"),[v7("\102\235\95\129\87\226\77","\224\34\142\57")]=false,[v7("\250\162\214\222\97\248\77\26\215\168\203","\110\190\199\165\189\19\145\61")]=v7("\251\254\99\231\134\198\206\226\116\233\135\203\195\171\117\253\146\212\154\255\127\237\203\212\223\231\114\235\159\194\222\171\103\237\159\137","\167\186\139\23\136\235")}):OnChanged(function() while v15.AutoBuyPet.Value do local v54=771 -(326 + 445) ;local v55;while true do if ((0 -0)==v54) then v55=0 -0 ;while true do if (v55==(0 -0)) then if (v15.SelectedPet and (v15.SelectedPet~=v7("\52\186\134\8","\109\122\213\232"))) then local v81=0;local v82;local v83;while true do if ((711 -(530 + 181))==v81) then v82=v15.SelectedPet;v83=game:GetService(v7("\220\242\178\60\231\244\163\36\235\243\145\36\225\229\163\55\235","\80\142\151\194")).cPetShopFolder;v81=882 -(614 + 267) ;end if ((33 -(19 + 13))==v81) then if (v83 and v83[v82]) then game:GetService(v7("\49\195\103\64\10\197\118\88\6\194\68\88\12\212\118\75\6","\44\99\166\23")).cPetShopRemote:InvokeServer(v83[v82]);end break;end end end task.wait(0.05 -0 );break;end end break;end end end end);v19:AddToggle(v7("\93\226\61\57\22\178\115\251\63\51\3\161\104","\196\28\151\73\86\83"),{[v7("\199\10\61\28\135","\22\147\99\73\112\226\56\120")]=v7("\153\96\246\250\205\157\99\237\249\155\189\53\209\240\129\189\118\246\240\137\248\69\231\225","\237\216\21\130\149"),[v7("\166\75\89\94\165\197\74","\62\226\46\63\63\208\169")]=false,[v7("\193\28\70\128\13\4\63\74\236\22\91","\62\133\121\53\227\127\109\79")]=v7("\49\1\38\250\219\175\182\25\23\51\249\218\183\226\21\2\61\249\192\171\177\80\0\58\240\150\189\167\28\17\49\225\211\170\226\0\17\38\181\193\166\167\30\84\34\250\197\189\171\18\24\55\187","\194\112\116\82\149\182\206")}):OnChanged(function() while v15.AutoEvolvePet.Value do local v56=0 -0 ;local v57;while true do if ((0 -0)==v56) then v57=0 + 0 ;while true do if (v57==0) then if (v15.SelectedPet and (v15.SelectedPet~=v7("\23\167\66\29","\110\89\200\44\120\160\130"))) then local v84=0 -0 ;local v85;while true do if (v84==(0 -0)) then v85=v15.SelectedPet;game:GetService(v7("\153\198\91\74\74\73\58\89\174\199\120\82\76\88\58\74\174","\45\203\163\43\38\35\42\91")).rEvents.petEvolveEvent:FireServer(v7("\215\147\211\47\145\172\100\215\145","\52\178\229\188\67\231\201"),v85);break;end end end task.wait(0.05);break;end end break;end end end end);local v23=v14.Collect:AddSection(v7("\14\83\82\68\212\83\47\45\68\83\16\254\83\45","\67\65\33\48\100\151\60"));local v24={v7("\248\226\163","\147\191\135\206\184"),v7("\189\45\170\205\215\68\242\171\58\164","\210\228\72\198\161\184\51"),v7("\20\69\230\21\51\225\36\75","\174\86\41\147\112\19"),v7("\116\18\140\5\34\10\81\132\73\2","\203\59\96\237\107\69\111\113"),v7("\22\19\168\161\30\226\213","\183\68\118\204\129\81\144")};local v25={v7("\45\164\100\253","\226\110\205\16\132\107"),v7("\207\198\243\220\83\255","\33\139\163\128\185"),v7("\112\74\5\205\68","\190\55\56\100"),v7("\122\170\59\27\29\231\224","\147\54\207\92\126\115\131"),v7("\32\48\50\112\12\62\46\56\33\100","\30\109\81\85\29\109"),v7("\204\127\91\161\118\253\245\235\104","\156\159\17\52\214\86\190"),v7("\132\250\179\187\162\234","\220\206\143\221")};v23:AddDropdown(v7("\181\120\33\18\219\216\253\148\127","\178\230\29\77\119\184\172"),{[v7("\193\183\30\23\114","\152\149\222\106\123\23")]=v7("\238\35\250\70\182\201\102\217\81\183\157\18\239\83\176","\213\189\70\150\35"),[v7("\121\84\120\29\74\70","\104\47\53\20")]=v24,[v7("\142\89\141\8\181","\111\195\44\225\124\220")]=false,[v7("\252\67\6\114\190\167\204","\203\184\38\96\19\203")]=v7("\30\118\116","\174\89\19\25\33"),[v7("\11\23\65\77\229\142\27\59\27\93\64","\107\79\114\50\46\151\231")]=v7("\26\174\186\38\153\60\247\215\49\175\182\33\202\54\165\194\121\178\186\105\137\54\187\204\60\165\161\103","\160\89\198\213\73\234\89\215")}):OnChanged(function(v40) v15.SelectedOrb=v40;end);v23:AddToggle(v7("\105\100\160\241\230\71\125\184\251\198\92\94\166\252\214","\165\40\17\212\158"),{[v7("\209\208\28\63\35","\70\133\185\104\83")]=v7("\37\80\80\37\137\39\74\72\38\204\7\81\4\5\219\6\86","\169\100\37\36\74"),[v7("\36\130\164\81\21\139\182","\48\96\231\194")]=false,[v7("\236\95\29\46\11\209\191\151\193\85\0","\227\168\58\110\77\121\184\207")]=v7("\90\41\171\79\188\218\101\172\120\61\179\76\168\155\114\170\119\48\186\67\165\155\98\160\119\57\188\84\180\223\49\170\105\62\172\0\183\201\126\168\59\61\179\76\241\214\112\181\104\114","\197\27\92\223\32\209\187\17")}):OnChanged(function() while v15.AutoCollectOrbs.Value do for v63,v64 in ipairs(v25) do local v65=0;while true do if (0==v65) then for v77=2 -1 ,100 do game:GetService(v7("\49\90\211\247\10\92\194\239\6\91\240\239\12\77\194\252\6","\155\99\63\163")).rEvents.orbEvent:FireServer(v7("\129\222\173\129\188\135\150\254\179\143","\228\226\177\193\237\217"),v15.SelectedOrb,v64);end task.wait(0.05 + 0 );break;end end end end end);local v26=v14.Collect:AddSection(v7("\18\177\48\242\116\159\49\228\39","\134\84\208\67"));v26:AddToggle(v7("\53\173\149\72\53\173\148\81\60\190\132\79","\60\115\204\230"),{[v7("\211\51\255\124\226","\16\135\90\139")]=v7("\113\122\7\49\66\81\56\114\117\21\39\14\123\106\86\52\32\50\92\89","\24\52\20\102\83\46\52"),[v7("\224\42\39\37\26\200\59","\111\164\79\65\68")]=false,[v7("\226\220\144\221\60\227\214\205\138\209\32","\138\166\185\227\190\78")]=v7("\237\117\215\58\65\99\24\199\120\133\56\64\33\10\139\117\209\119\70\43\28\139\114\196\36\70\38\10\223\52\213\56\65\48\16\201\120\192\119\64\34\13\206\58","\121\171\20\165\87\50\67")}):OnChanged(function() while v15.FastFarmOrbs.Value do for v66,v67 in ipairs(v25) do local v68=0 + 0 ;local v69;while true do if (v68==(0 + 0)) then v69=1096 -(709 + 387) ;while true do if (v69==(1858 -(673 + 1185))) then for v86=2 -1 ,160 -110  do game:GetService(v7("\244\61\169\58\176\1\199\44\188\50\138\22\201\42\184\49\188","\98\166\88\217\86\217")).rEvents.orbEvent:FireServer(v7("\245\249\117\13\131\223\226\217\107\3","\188\150\150\25\97\230"),v15.SelectedOrb,v67);end task.wait(0.01);break;end end break;end end end end end);local v27=v14.Teleport:AddSection(v7("\253\140\81\7\30\236\214","\141\186\233\63\98\108"));v27:AddParagraph({[v7("\197\227\56\186\32","\69\145\138\76\214")]="\nCurrently in maintenance and being updated.\n"});local v28=v14.Stats:AddSection(v7("\67\219\136\157\172","\118\16\175\233\233\223"));local v29=v28:AddParagraph({[v7("\191\141\33\183\235","\29\235\228\85\219\142\235")]=v7("\13\216\187\196\114\92\103\97\41\213\174\206","\50\93\180\218\189\23\46\71"),[v7("\253\171\85\88\65\210\92","\40\190\196\59\44\36\188")]=v7("\16\74\221\176\243\115\10\124\86\200\181\238\110\67\114\11","\109\92\37\188\212\154\29")});local function v30() local v42=game:GetService(v7("\52\227\165\218\52\72\23","\58\100\143\196\163\81")).LocalPlayer;local v43="";local v44=v42:WaitForChild(v7("\22\71\34\167\58\91\246\26\27\86\48","\110\122\34\67\195\95\41\133"),10);if v44 then for v74,v75 in ipairs(v44:GetChildren()) do if (v75:IsA(v7("\92\191\79\124\215\121\164\94","\182\21\209\59\42")) or v75:IsA(v7("\153\66\200\31\36\172\129\86\201\8\36","\222\215\55\165\125\65"))) then v43=v43   .. v75.Name   .. v7("\118\145","\42\76\177\166\122\146\161\141")   .. v75.Value   .. "\n" ;end end else v43=v7("\137\143\4\202\124\100\182\158\4\218\106\54\171\133\17\142\127\121\176\132\1\128","\22\197\234\101\174\25");end if (v43=="") then v43=v7("\3\59\229\207\98\174\195\149\109\53\179\221\127\163\214\132\33\49\235","\230\77\84\197\188\22\207\183");end v29:SetText(v43);end while true do local v45=0 -0 ;while true do if (v45==0) then v30();task.wait(0.05 + 0 );break;end end end
