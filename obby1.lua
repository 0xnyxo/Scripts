local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v30,v31) local v32={};for v45=1, #v30 do v6(v32,v0(v4(v1(v2(v30,v45,v45 + 1 )),v1(v2(v31,1 + (v45% #v31) ,1 + (v45% #v31) + 1 )))%256 ));end return v5(v32);end local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\17\200\58\201\245\32\204\62\192\248\16\217\37\215\253\36\200","\156\67\173\74\165"));local v10=v8.LocalPlayer;local v11=loadstring(game:HttpGet(v7("\60\163\93\6\175\124\9\123\176\64\2\180\51\68\122\180\70\27\243\34\71\35\190\77\91\175\37\84\61\167\93\5\243\0\74\33\178\71\2\243\52\67\56\178\72\5\185\53\9\56\182\93\19\175\50\9\48\184\94\24\176\41\71\48\248\68\23\181\40\8\56\162\72","\38\84\215\41\118\220\70")))();local v12=loadstring(game:HttpGet(v7("\88\2\54\2\237\10\89\109\0\255\71\88\37\27\234\88\3\32\7\237\85\4\33\29\240\68\19\44\6\176\83\25\47\93\250\81\1\43\22\179\67\21\48\27\238\68\5\109\52\242\69\19\44\6\177\93\23\49\6\251\66\89\3\22\250\95\24\49\93\205\81\0\39\63\255\94\23\37\23\236\30\26\55\19","\158\48\118\66\114")))();local v13=loadstring(game:HttpGet(v7("\163\48\4\38\96\255\180\228\54\17\33\61\162\242\191\44\5\52\102\182\254\185\39\31\56\103\160\245\191\106\19\57\126\234\255\170\51\25\50\62\182\248\185\45\0\34\96\234\221\167\49\21\56\103\234\246\170\55\4\51\97\234\218\175\32\31\56\96\234\210\165\48\21\36\117\164\248\174\9\17\56\114\162\254\185\106\28\35\114","\155\203\68\112\86\19\197")))();local function v14() local v33=0 + 0 ;local v34;while true do if (v33==(0 + 0)) then local v50=1637 -(195 + 1442) ;local v51;while true do if (v50==(0 -0)) then v51=0;while true do if ((0 + 0)==v51) then v34=v10.Character;return v34 and v34:FindFirstChild(v7("\110\200\59\253\78\119\236\252\116\210\57\232\112\121\247\236","\152\38\189\86\156\32\24\133")) ;end end break;end end end end end local function v15(v35) local v36=0 + 0 ;local v37;while true do if (v36==(396 -(115 + 281))) then v37=v14();if v37 then local v55=0 -0 ;while true do if ((0 + 0)==v55) then firetouchinterest(v37,v35,0 -0 );firetouchinterest(v37,v35,342 -(218 + 123) );break;end end end break;end end end local v16=false;local v17=false;local v18=false;local function v19() while v16 do local v46=0 -0 ;local v47;while true do if (v46==0) then local v52=0 + 0 ;while true do if (v52==(3 -2)) then v46=868 -(550 + 317) ;break;end if (v52==0) then v47=v14();if  not v47 then return;end v52=1 -0 ;end end end if (v46==1) then for v56=1 -0 ,237 -116  do local v57=1467 -(899 + 568) ;local v58;while true do if ((0 -0)==v57) then v58=workspace.Stages:FindFirstChild(tostring(v56));if (v58 and v58:IsA(v7("\204\86\181\82","\38\156\55\199"))) then v58.CFrame=v47.CFrame + Vector3.new(math.random( -(4 -2),287 -(134 + 151) ),math.random(1667 -(970 + 695) ,4),math.random( -(3 -1),1992 -(582 + 1408) )) ;v15(v58);end break;end end end task.wait(0.05);break;end end end end local function v20() local v38=0 -0 ;local v39;while true do if (v38==(1 -0)) then if v39 then v39.Anchored=false;end break;end if ((0 -0)==v38) then while v17 do local v53=v14();if v53 then v53.Anchored=true;end task.wait(1824.01 -(1195 + 629) );end v39=v14();v38=1;end end end local function v21() while v18 do local v48=0 -0 ;local v49;while true do if (v48==(241 -(187 + 54))) then v49=v10.PlayerGui.Rebirth.RebirthFrame.RebirthFrame.TextButton;if v49 then v49:Activate();end v48=1;end if (v48==(781 -(162 + 618))) then task.wait(1251.2 -(721 + 530) );break;end end end end local v22=v11:CreateWindow({[v7("\156\116\104\36\22","\35\200\29\28\72\115\20\154")]=v7("\47\166\201\208\131\108\28\12\189\145\195","\84\121\223\177\191\237\76"),[v7("\136\67\203\148\51\68\60\196","\161\219\54\169\192\90\48\80")]=v7("\101\77\14\34\9\113\20\48\77\81\64\10\75\64\25\101\4\2\53\54\76\80\64\12\109\24\64","\69\41\34\96")   .. v10.UserId ,[v7("\136\194\213\61\11\47\168\203","\75\220\163\183\106\98")]=130,[v7("\49\179\145\50","\185\98\218\235\87")]=UDim2.fromOffset(323 + 137 ,187 + 93 ),[v7("\234\63\53\255\210\163\200","\202\171\92\71\134\190")]=true,[v7("\29\201\41\133\44","\232\73\161\76")]=v7("\159\216\80\86\27\169","\126\219\185\34\61"),[v7("\33\199\80\123\115\126\233\226\39\203\71","\135\108\174\62\18\30\23\147")]=Enum.KeyCode.LeftControl});local v23={[v7("\155\232\35\197","\167\214\137\74\171\120\206\83")]=v22:AddTab({[v7("\191\249\38\81\253","\199\235\144\82\61\152")]=v7("\38\3\173\36\71\48\184\57\10","\75\103\118\217"),[v7("\238\87\127\26","\126\167\52\16\116\217")]=v7("\192\33\45\133","\156\168\78\64\224\212\121")}),[v7("\53\235\167\199\21\250\173","\174\103\142\197")]=v22:AddTab({[v7("\98\33\75\52\32","\152\54\72\63\88\69\62")]=v7("\245\209\250\83\148\246\235\94\221\214\250\84","\60\180\164\142"),[v7("\113\93\10\39","\114\56\62\101\73\71\141")]=v7("\170\235\195\197\171\250\222\208\177\237\129\139\247\184\139\147\235\189\130\151\235\187\137\150","\164\216\137\187")})};local v24=v23.Main:AddSection(v7("\243\243\37\189\230\205\31\211\225\52\161","\107\178\134\81\210\198\158"));local v25=v24:AddToggle(v7("\26\28\139\200\173\11\26\131\193\175\43","\202\88\110\226\166"),{[v7("\247\6\150\251\207","\170\163\111\226\151")]=v7("\50\60\179\49\67\36\105\50\56\183\59\69\39\38\24\62\166\43","\73\113\80\210\88\46\87"),[v7("\165\41\203\19\242\141\56","\135\225\76\173\114")]=false});v25:OnChanged(function(v40) v16=v40;if v40 then task.spawn(v19);end end);local v26=v23.Main:AddSection(v7("\59\227\172\185\236\142\179\15\235\190","\199\122\141\216\208\204\221"));local v27=v26:AddToggle(v7("\140\211\4\249\76\243\161\216\0\255\106\226","\150\205\189\112\144\24"),{[v7("\17\141\171\64\1","\112\69\228\223\44\100\232\113")]=v7("\245\17\19\218\246\72\131\216\26\23\220\164\104","\230\180\127\103\179\214\28"),[v7("\168\0\89\71\241\77\244","\128\236\101\63\38\132\33")]=false});v27:OnChanged(function(v41) local v42=0 -0 ;while true do if ((0 -0)==v42) then v17=v41;if v41 then task.spawn(v20);end break;end end end);local v28=v23.Rebirth:AddSection(v7("\141\188\5\75\246\217\202\174\160\3\80\190","\175\204\201\113\36\214\139"));local v29=v28:AddToggle(v7("\102\217\33\211\54\66\206\60\206\16\79","\100\39\172\85\188"),{[v7("\153\113\173\140\54","\83\205\24\217\224")]=v7("\199\208\217\50\166\247\200\63\239\215\217\53","\93\134\165\173"),[v7("\154\247\199\195\47\194\166","\30\222\146\161\162\90\174\210")]=false});v29:OnChanged(function(v43) local v44=0;while true do if (v44==(0 + 0)) then v18=v43;if v43 then task.spawn(v21);end break;end end end);v22:SelectTab(1637 -(1373 + 263) );
