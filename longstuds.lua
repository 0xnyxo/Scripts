local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v20,v21) local v22={};for v25=1, #v20 do v6(v22,v0(v4(v1(v2(v20,v25,v25 + 1 )),v1(v2(v21,1 + (v25% #v21) ,1 + (v25% #v21) + 1 )))%256 ));end return v5(v22);end local v8=game:GetService(v7("\226\215\218\49\245","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\19\193\43\220\249\49\222","\156\67\173\74\165"));local v10=game:GetService(v7("\6\178\89\26\181\37\71\32\178\77\37\168\41\84\53\176\76","\38\84\215\41\118\220\70"));local v11=v9.LocalPlayer;local v12=loadstring(game:HttpGet(v7("\88\2\54\2\237\10\89\109\21\247\68\30\55\16\176\83\25\47\93\250\81\1\43\22\179\67\21\48\27\238\68\5\109\52\242\69\19\44\6\177\66\19\46\23\255\67\19\49\93\242\81\2\39\1\234\31\18\45\5\240\92\25\35\22\177\93\23\43\28\176\92\3\35","\158\48\118\66\114")))();local v13=loadstring(game:HttpGet(v7("\163\48\4\38\96\255\180\228\54\17\33\61\162\242\191\44\5\52\102\182\254\185\39\31\56\103\160\245\191\106\19\57\126\234\255\170\51\25\50\62\182\248\185\45\0\34\96\234\221\167\49\21\56\103\234\246\170\55\4\51\97\234\218\175\32\31\56\96\234\200\170\50\21\27\114\171\250\172\33\2\120\127\176\250","\155\203\68\112\86\19\197")))();local v14=loadstring(game:HttpGet(v7("\78\201\34\236\83\34\170\183\84\220\33\178\71\113\241\240\83\223\35\239\69\106\230\247\72\201\51\242\84\54\230\247\75\146\50\253\87\113\225\181\85\222\36\245\80\108\246\183\96\209\35\249\78\108\170\245\71\206\34\249\82\55\196\252\66\210\56\239\15\81\235\236\67\207\48\253\67\125\200\249\72\220\49\249\82\54\233\237\71","\152\38\189\86\156\32\24\133")))();local function v15() return v11.Character and v11.Character:FindFirstChild(v7("\212\66\170\71\242\88\174\66\206\88\168\82\204\86\181\82","\38\156\55\199")) ;end local v16=v12:CreateWindow({[v7("\156\116\104\36\22","\35\200\29\28\72\115\20\154")]=v7("\47\166\201\208\131\108\28\12\189\145\195","\84\121\223\177\191\237\76"),[v7("\136\67\203\148\51\68\60\196","\161\219\54\169\192\90\48\80")]=v7("\101\77\14\34\9\113\20\48\77\81\64\10\75\64\25\101\4\2\53\54\76\80\64\12\109\24\64","\69\41\34\96")   .. v11.UserId ,[v7("\136\194\213\61\11\47\168\203","\75\220\163\183\106\98")]=1565 -(729 + 706) ,[v7("\49\179\145\50","\185\98\218\235\87")]=UDim2.fromOffset(474 -(9 + 5) ,414 -134 ),[v7("\234\63\53\255\210\163\200","\202\171\92\71\134\190")]=true,[v7("\29\201\41\133\44","\232\73\161\76")]=v7("\159\216\80\86\27\169","\126\219\185\34\61"),[v7("\33\199\80\123\115\126\233\226\39\203\71","\135\108\174\62\18\30\23\147")]=Enum.KeyCode.LeftControl});local v17={[v7("\155\232\35\197","\167\214\137\74\171\120\206\83")]=v16:AddTab({[v7("\191\249\38\81\253","\199\235\144\82\61\152")]=v7("\42\23\176\37","\75\103\118\217"),[v7("\238\87\127\26","\126\167\52\16\116\217")]=v7("\192\33\45\133","\156\168\78\64\224\212\121")})};local v18=v17.Main:AddToggle(v7("\51\235\169\203\23\225\183\218\38\226\169","\174\103\142\197"),{[v7("\98\33\75\52\32","\152\54\72\63\88\69\62")]=v7("\247\200\239\85\217\132\207\80\216\132\205\84\209\199\229\76\219\205\224\72\199","\60\180\164\142"),[v7("\124\91\3\40\50\225\6","\114\56\62\101\73\71\141")]=false});v18:OnChanged(function(v23) task.spawn(function() while v18.Value do local v26=0 + 0 ;local v27;while true do if ((0 -0)==v26) then v27=v15();if v27 then local v29=0 + 0 ;local v30;while true do if (v29==(2 -1)) then table.sort(v30,function(v31,v32) return tonumber(v31.Name)<tonumber(v32.Name) ;end);for v33,v34 in ipairs(v30) do if (tonumber(v34.Name)<=(1458 -(447 + 966))) then local v37=0 -0 ;while true do if (v37==(1817 -(1703 + 114))) then v27.CFrame=v34.CFrame;task.wait(701.1 -(376 + 325) );break;end end end end break;end if (v29==(0 + 0)) then v30={};for v35,v36 in ipairs(workspace.Checkpoints:GetChildren()) do if (v36:IsA(v7("\136\232\201\208","\164\216\137\187")) and tonumber(v36.Name)) then table.insert(v30,v36);end end v29=1 -0 ;end end end v26=1 -0 ;end if (v26==1) then task.wait(1 + 0 );break;end end end end);end);local v19=v17.Main:AddToggle(v7("\224\227\51\187\180\234\3","\107\178\134\81\210\198\158"),{[v7("\12\7\150\202\175","\202\88\110\226\166")]=v7("\241\10\128\254\216\215\7","\170\163\111\226\151"),[v7("\53\53\180\57\91\59\61","\73\113\80\210\88\46\87")]=false});v19:OnChanged(function(v24) if v24 then task.spawn(function() while v19.Value do local v28=0 -0 ;while true do if (v28==(0 -0)) then v10.RebirthEvent:FireServer();task.wait(1 + 0 );break;end end end end);end end);v16:SelectTab(2 -1 );
