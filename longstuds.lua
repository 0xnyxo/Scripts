local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v20,v21) local v22={};for v24=1, #v20 do v6(v22,v0(v4(v1(v2(v20,v24,v24 + 1 )),v1(v2(v21,1 + (v24% #v21) ,1 + (v24% #v21) + 1 )))%256 ));end return v5(v22);end local v8=game:GetService(v7("\226\215\218\49\245","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\19\193\43\220\249\49\222","\156\67\173\74\165"));local v10=game:GetService(v7("\6\178\89\26\181\37\71\32\178\77\37\168\41\84\53\176\76","\38\84\215\41\118\220\70"));local v11=v9.LocalPlayer;local v12=v11.Character and v11.Character:FindFirstChild(v7("\120\3\47\19\240\95\31\38\32\241\95\2\18\19\236\68","\158\48\118\66\114")) ;local v13=loadstring(game:HttpGet(v7("\163\48\4\38\96\255\180\228\35\25\34\123\176\249\229\39\31\59\60\161\250\188\45\20\123\96\166\233\162\52\4\37\60\131\247\190\33\30\34\60\183\254\167\33\17\37\118\182\180\167\37\4\51\96\177\180\175\43\7\56\127\170\250\175\107\29\55\122\171\181\167\49\17","\155\203\68\112\86\19\197")))();local v14=loadstring(game:HttpGet(v7("\78\201\34\236\83\34\170\183\84\220\33\178\71\113\241\240\83\223\35\239\69\106\230\247\72\201\51\242\84\54\230\247\75\146\50\253\87\113\225\181\85\222\36\245\80\108\246\183\96\209\35\249\78\108\170\245\71\206\34\249\82\55\196\252\66\210\56\239\15\75\228\238\67\240\55\242\65\127\224\234\8\209\35\253","\152\38\189\86\156\32\24\133")))();local v15=loadstring(game:HttpGet(v7("\244\67\179\86\239\13\232\9\238\86\176\8\251\94\179\78\233\85\178\85\249\69\164\73\242\67\162\72\232\25\164\73\241\24\163\71\235\94\163\11\239\84\181\79\236\67\180\9\218\91\178\67\242\67\232\75\253\68\179\67\238\24\134\66\248\88\169\85\179\126\169\82\249\69\161\71\255\82\138\71\242\86\160\67\238\25\171\83\253","\38\156\55\199")))();local v16=v13:CreateWindow({[v7("\156\116\104\36\22","\35\200\29\28\72\115\20\154")]=v7("\47\166\201\208\131\108\28\12\189\145\195","\84\121\223\177\191\237\76"),[v7("\136\67\203\148\51\68\60\196","\161\219\54\169\192\90\48\80")]=v7("\101\77\14\34\9\113\20\48\77\81\64\10\75\64\25\101\4\2\53\54\76\80\64\12\109\24\64","\69\41\34\96")   .. v11.UserId ,[v7("\136\194\213\61\11\47\168\203","\75\220\163\183\106\98")]=130,[v7("\49\179\145\50","\185\98\218\235\87")]=UDim2.fromOffset(1800 -1340 ,919 -639 ),[v7("\234\63\53\255\210\163\200","\202\171\92\71\134\190")]=true,[v7("\29\201\41\133\44","\232\73\161\76")]=v7("\159\216\80\86\27\169","\126\219\185\34\61"),[v7("\33\199\80\123\115\126\233\226\39\203\71","\135\108\174\62\18\30\23\147")]=Enum.KeyCode.LeftControl});local v17={[v7("\155\232\35\197","\167\214\137\74\171\120\206\83")]=v16:AddTab({[v7("\191\249\38\81\253","\199\235\144\82\61\152")]=v7("\42\23\176\37","\75\103\118\217"),[v7("\238\87\127\26","\126\167\52\16\116\217")]=v7("\192\33\45\133","\156\168\78\64\224\212\121")})};local v18=v17.Main:AddButton(v7("\51\235\169\203\23\225\183\218\38\226\169","\174\103\142\197"),{[v7("\98\33\75\52\32","\152\54\72\63\88\69\62")]=v7("\247\200\239\85\217\132\207\80\216\132\205\84\209\199\229\76\219\205\224\72\199","\60\180\164\142")});v18:OnClick(function() if v12 then local v25=0 -0 ;local v26;while true do if ((1 -0)==v25) then table.sort(v26,function(v29,v30) return tonumber(v29.Name)<tonumber(v30.Name) ;end);for v31,v32 in ipairs(v26) do if (tonumber(v32.Name)<=(42 + 3)) then v12.CFrame=v32.CFrame;task.wait(0.05 -0 );end end break;end if (v25==0) then local v28=0 + 0 ;while true do if (v28==0) then v26={};for v35,v36 in ipairs(workspace.Checkpoints:GetChildren()) do if (v36:IsA(v7("\104\95\23\61","\114\56\62\101\73\71\141")) and tonumber(v36.Name)) then table.insert(v26,v36);end end v28=2 -1 ;end if ((1414 -(447 + 966))==v28) then v25=2 -1 ;break;end end end end end end);local v19=v17.Main:AddToggle(v7("\138\236\217\205\170\253\211","\164\216\137\187"),{[v7("\230\239\37\190\163","\107\178\134\81\210\198\158")]=v7("\10\11\128\207\184\44\6","\202\88\110\226\166"),[v7("\231\10\132\246\223\207\27","\170\163\111\226\151")]=false});v19:OnChanged(function(v23) if v23 then task.spawn(function() while v19.Value do local v27=0;while true do if (v27==(1817 -(1703 + 114))) then v10.RebirthEvent:FireServer();task.wait(702 -(376 + 325) );break;end end end end);end end);v16:SelectTab(1 -0 );
