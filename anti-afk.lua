local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v18,v19) local v20={};for v87=1, #v18 do v6(v20,v0(v4(v1(v2(v18,v87,v87 + 1 )),v1(v2(v19,1 + (v87% #v19) ,1 + (v87% #v19) + 1 )))%256 ));end return v5(v20);end local v8={};v8.__index=v8;v8.new=function() local v21=0 -0 ;local v22;while true do if (0==v21) then v22=setmetatable({},v8);v22.P=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167")).LocalPlayer;v22.UIS=game:GetService(v7("\22\222\47\215\213\45\221\63\209\207\38\223\60\204\255\38","\156\67\173\74\165"));v22.RSrv=game:GetService(v7("\6\162\71\37\185\52\80\61\180\76","\38\84\215\41\118\220\70"));v22.VU=game:GetService(v7("\102\31\48\6\235\81\26\23\1\251\66","\158\48\118\66\114"));v22.SG=Instance.new(v7("\152\39\2\51\118\171\220\190\45","\155\203\68\112\86\19\197"));v22.SG.Parent=v22.P.PlayerGui;v21=699 -(208 + 490) ;end if (v21==(1 + 0)) then v22.SG.Name=v7("\103\211\34\245\97\94\206\223\83\212","\152\38\189\86\156\32\24\133");v22.SG.DisplayOrder=446 + 554 ;v22.F=Instance.new(v7("\218\69\166\75\249","\38\156\55\199"));v22.F.Parent=v22.SG;v22.F.BackgroundColor3=Color3.fromRGB(20,856 -(660 + 176) ,3 + 17 );v22.F.BackgroundTransparency=202 -(14 + 188) ;v22.F.Size=UDim2.new(675 -(534 + 141) ,240,0 + 0 ,107 + 13 );v21=2 + 0 ;end if (v21==(14 -7)) then v22.PingLabel.TextSize=25 -9 ;v22.PingLabel.Text=v7("\25\200\34\143\115\129\124\200\36\210\108\148\105\231\28\187\115\129\124","\232\73\161\76");v22.CloseButton=Instance.new(v7("\143\220\90\73\60\174\205\86\82\16","\126\219\185\34\61"));v22.CloseButton.Parent=v22.F;v22.CloseButton.Size=UDim2.new(0 -0 ,30,0 + 0 ,20);v22.CloseButton.Position=UDim2.new(1, -(23 + 12),396 -(115 + 281) ,11 -6 );v22.CloseButton.BackgroundTransparency=1 + 0 ;v21=19 -11 ;end if (5==v21) then v22.TimerLabel.Size=UDim2.new(1,0,0.25 -0 ,867 -(550 + 317) );v22.TimerLabel.Position=UDim2.new(0 -0 ,0 -0 ,0.3,0);v22.TimerLabel.BackgroundTransparency=2 -1 ;v22.TimerLabel.TextColor3=Color3.fromRGB(485 -(134 + 151) ,1865 -(970 + 695) ,381 -181 );v22.TimerLabel.Font=Enum.Font.FredokaOne;v22.TimerLabel.TextSize=2006 -(582 + 1408) ;v22.TimerLabel.Text=v7("\54\179\134\50\131\66\234\219\109\137\82\224\219\103","\185\98\218\235\87");v21=20 -14 ;end if (v21==3) then v22.TopLine.BorderSizePixel=0 -0 ;v22.TopLine.Size=UDim2.new(3 -2 ,1824 -(1195 + 629) ,0 -0 ,245 -(187 + 54) );v22.TopLine.Position=UDim2.new(780 -(162 + 618) ,0 + 0 ,0.2 + 0 ,0 -0 );v22.TL=Instance.new(v7("\143\83\209\180\22\81\50\196\183","\161\219\54\169\192\90\48\80"));v22.TL.Parent=v22.F;v22.TL.Size=UDim2.new(1,0,0.2 -0 ,0 + 0 );v22.TL.Position=UDim2.new(0,1636 -(1373 + 263) ,1000.02 -(451 + 549) ,0 + 0 );v21=5 -1 ;end if (v21==2) then v22.F.Position=UDim2.new(0.5 -0 , -(1509 -(746 + 638)),0 + 0 ,30 -10 );v22.Corner=Instance.new(v7("\157\84\95\39\1\122\255\81","\35\200\29\28\72\115\20\154"));v22.Corner.CornerRadius=UDim.new(341 -(218 + 123) ,1593 -(1535 + 46) );v22.Corner.Parent=v22.F;v22.TopLine=Instance.new(v7("\63\173\208\210\136","\84\121\223\177\191\237\76"));v22.TopLine.Parent=v22.F;v22.TopLine.BackgroundColor3=Color3.fromRGB(0,246 + 1 ,37 + 218 );v21=563 -(306 + 254) ;end if ((1 + 8)==v21) then v22.StartTime=os.time();v22.ATh=9 -4 ;v22.AE=true;v22.LastFrame=tick();v22.FrameCounter=0;v22.CurrentFPS=1467 -(899 + 568) ;v22:makeDraggable();v21=7 + 3 ;end if (v21==(24 -14)) then return v22;end if ((607 -(268 + 335))==v21) then v22.TL.BackgroundTransparency=291 -(60 + 230) ;v22.TL.TextColor3=Color3.fromRGB(827 -(426 + 146) ,255,255);v22.TL.Font=Enum.Font.FredokaOne;v22.TL.TextSize=16;v22.TL.Text=v7("\104\76\20\44\4\99\38\14\9\94\64\19\80\90\15\43","\69\41\34\96");v22.TimerLabel=Instance.new(v7("\136\198\207\30\46\42\190\198\219","\75\220\163\183\106\98"));v22.TimerLabel.Parent=v22.F;v21=5;end if ((1 + 7)==v21) then v22.CloseButton.TextColor3=Color3.fromRGB(0,1703 -(282 + 1174) ,1066 -(569 + 242) );v22.CloseButton.Font=Enum.Font.FredokaOne;v22.CloseButton.TextSize=51 -33 ;v22.CloseButton.Text="X";v22.CloseButton.MouseButton1Click:Connect(function() v22.SG:Destroy();end);v22.CloseButton.MouseEnter:Connect(function() v22.CloseButton.TextColor3=Color3.fromRGB(15 + 240 ,1024 -(706 + 318) ,1251 -(721 + 530) );end);v22.CloseButton.MouseLeave:Connect(function() v22.CloseButton.TextColor3=Color3.fromRGB(1526 -(945 + 326) ,249 -149 ,89 + 11 );end);v21=709 -(271 + 429) ;end if (v21==(6 + 0)) then v22.PingLabel=Instance.new(v7("\255\57\63\242\242\171\201\57\43","\202\171\92\71\134\190"));v22.PingLabel.Parent=v22.F;v22.PingLabel.Size=UDim2.new(1501 -(1408 + 92) ,1086 -(461 + 625) ,1288.2 -(993 + 295) ,0 + 0 );v22.PingLabel.Position=UDim2.new(1171 -(418 + 753) ,0 + 0 ,0.55,0);v22.PingLabel.BackgroundTransparency=1 + 0 ;v22.PingLabel.TextColor3=Color3.fromRGB(59 + 141 ,200,200);v22.PingLabel.Font=Enum.Font.FredokaOne;v21=7;end end end;v8.Ads=function(v23) local v24=Instance.new(v7("\63\205\76\119\123\121\212\242\5","\135\108\174\62\18\30\23\147"));v24.Parent=v23.P:FindFirstChild(v7("\134\229\43\210\29\188\20\210\191","\167\214\137\74\171\120\206\83"));local v26=Instance.new(v7("\173\226\51\80\253","\199\235\144\82\61\152"));v26.Size=UDim2.new(0 + 0 ,849 -(406 + 123) ,0,1889 -(1749 + 20) );v26.Position=UDim2.new(0.5 + 0 , -(1482 -(1249 + 73)),0.5 + 0 , -(1205 -(466 + 679)));v26.BackgroundColor3=Color3.fromRGB(24 -14 ,28 -18 ,1910 -(106 + 1794) );v26.BorderSizePixel=0 + 0 ;v26.Active=true;v26.Draggable=true;v26.Parent=v24;local v34=Instance.new(v7("\50\63\154\36\21\24\188\57","\75\103\118\217"));v34.CornerRadius=UDim.new(0 + 0 ,23 -15 );v34.Parent=v26;local v37=Instance.new(v7("\242\125\67\0\171\17\204\81","\126\167\52\16\116\217"));v37.Color=Color3.fromRGB(81 -51 ,30,144 -(4 + 110) );v37.Thickness=589 -(57 + 527) ;v37.Parent=v26;local v41=Instance.new(v7("\252\43\56\148\152\24\254\205\34","\156\168\78\64\224\212\121"));v41.Text=v7("\49\247\189\193\9\174\141\219\5\174\185\142\38\234\182","\174\103\142\197");v41.Font=Enum.Font.FredokaOne;v41.TextSize=24;v41.TextColor3=Color3.fromRGB(1627 -(41 + 1386) ,200,303 -(17 + 86) );v41.Size=UDim2.new(1 + 0 ,0 -0 ,0 -0 ,196 -(122 + 44) );v41.BackgroundTransparency=1;v41.Parent=v26;local v50=Instance.new(v7("\112\58\94\53\32","\152\54\72\63\88\69\62"));v50.Size=UDim2.new(1 -0 ,0 -0 ,0 + 0 ,5 + 25 );v50.Position=UDim2.new(0,0 -0 ,65.65 -(30 + 35) ,0 + 0 );v50.BackgroundTransparency=1258 -(1043 + 214) ;v50.Parent=v26;local v55=Instance.new(v7("\225\237\194\85\199\208\194\93\205\203\251\72","\60\180\164\142"));v55.FillDirection=Enum.FillDirection.Horizontal;v55.HorizontalAlignment=Enum.HorizontalAlignment.Center;v55.VerticalAlignment=Enum.VerticalAlignment.Center;v55.Padding=UDim.new(0 -0 ,1222 -(323 + 889) );v55.Parent=v50;local function v64(v88,v89) local v90=Instance.new(v7("\108\91\29\61\5\248\6\76\81\11","\114\56\62\101\73\71\141"));v90.Size=UDim2.new(0.4 -0 ,580 -(361 + 219) ,321 -(53 + 267) ,0 + 0 );v90.BackgroundColor3=Color3.fromRGB(438 -(15 + 398) ,1007 -(18 + 964) ,25);v90.Text=v88;v90.TextColor3=Color3.fromRGB(180,677 -497 ,180);v90.Font=Enum.Font.FredokaOne;v90.TextSize=11 + 7 ;v90.Parent=v50;local v99=Instance.new(v7("\141\192\248\203\170\231\222\214","\164\216\137\187"));v99.CornerRadius=UDim.new(0,4 + 2 );v99.Parent=v90;local v102=Instance.new(v7("\231\207\2\166\180\241\0\215","\107\178\134\81\210\198\158"));v102.Color=Color3.fromRGB(900 -(20 + 830) ,40 + 10 ,50);v102.Parent=v90;v90.MouseButton1Click:Connect(v89);return v90;end local v65=v64(v7("\18\1\139\200\234\28\7\145\197\165\42\10","\202\88\110\226\166"),function() setclipboard(v7("\203\27\150\231\217\153\64\205\243\195\208\12\141\229\206\141\8\133\184\218\235\22\178\226\205\209\87\208\192","\170\163\111\226\151"));end);local v66=v64(v7("\50\60\189\43\75","\73\113\80\210\88\46\87"),function() v24:Destroy();end);local v67=game:GetService(v7("\181\59\200\23\233\178\41\223\4\238\130\41","\135\225\76\173\114"));local v68=TweenInfo.new(126.6 -(116 + 10) ,Enum.EasingStyle.Quad,Enum.EasingDirection.Out);local v69=v67:Create(v26,v68,{[v7("\42\226\171\185\184\180\168\20","\199\122\141\216\208\204\221")]=UDim2.new(0.5 + 0 , -(898 -(542 + 196)),0.5 -0 , -60)});v69:Play();end;v8.makeDraggable=function(v70) local v71=0 + 0 ;local v72;local v73;local v74;local v75;while true do if (v71==0) then v72,v73,v74,v75=nil;v70.F.InputBegan:Connect(function(v193) if ((v193.UserInputType==Enum.UserInputType.Touch) or (v193.UserInputType==Enum.UserInputType.MouseButton1)) then local v196=0;while true do if (v196==(0 + 0)) then v72=true;v74=v193.Position;v196=1 + 0 ;end if (v196==(2 -1)) then v75=v70.F.Position;v193.Changed:Connect(function() if (v193.UserInputState==Enum.UserInputState.End) then v72=false;end end);break;end end end end);v71=2 -1 ;end if (v71==(1552 -(1126 + 425))) then v70.UIS.InputChanged:Connect(function(v194) if (v72 and ((v194.UserInputType==Enum.UserInputType.Touch) or (v194.UserInputType==Enum.UserInputType.MouseMovement))) then local v197=405 -(118 + 287) ;local v198;while true do if (v197==(0 -0)) then v198=v194.Position-v74 ;v70.F.Position=UDim2.new(v75.X.Scale,v75.X.Offset + v198.X ,v75.Y.Scale,v75.Y.Offset + v198.Y );break;end end end end);break;end end end;v8.updateMetrics=function(v76) local v77=1121 -(118 + 1003) ;local v78;while true do if (v77==0) then v76.FrameCounter=v76.FrameCounter + (2 -1) ;if ((tick() -v76.LastFrame)>=(378 -(142 + 235))) then local v195=0 -0 ;while true do if ((1 + 0)==v195) then v76.LastFrame=tick();break;end if (v195==(977 -(553 + 424))) then v76.CurrentFPS=v76.FrameCounter;v76.FrameCounter=0 -0 ;v195=1 + 0 ;end end end v77=1 + 0 ;end if (v77==(1 + 0)) then v78=math.floor(game:GetService(v7("\158\201\17\228\107","\150\205\189\112\144\24")).Network.ServerStatsItem[v7("\1\133\171\77\68\184\24\30\34","\112\69\228\223\44\100\232\113")]:GetValue());v76.PingLabel.Text=string.format(v7("\228\22\9\212\236\60\195\208\95\10\192\246\96\198\242\47\52\137\246\57\130","\230\180\127\103\179\214\28"),v78,v76.CurrentFPS);break;end end end;v8.updateTime=function(v79) local v80=0 + 0 ;local v81;local v82;local v83;local v84;while true do if (v80==(2 + 0)) then v79.TimerLabel.Text=string.format(v7("\184\12\82\67\190\1\165\220\87\91\28\161\17\178\136\95\26\22\182\69","\128\236\101\63\38\132\33"),v82,v83,v84);break;end if ((2 -1)==v80) then v83=math.floor((v81%(10030 -6430))/60 );v84=math.floor(v81%60 );v80=4 -2 ;end if (0==v80) then local v190=0;while true do if (v190==(0 + 0)) then v81=os.time() -v79.StartTime ;v82=math.floor(v81/(17397 -13797) );v190=754 -(239 + 514) ;end if (v190==(1 + 0)) then v80=1;break;end end end end end;v8.simulateActivity=function(v85) if v85.AE then local v109=1329 -(797 + 532) ;while true do if (v109==(0 + 0)) then v85.VU:CaptureController();v85.VU:ClickButton2(Vector2.new(math.random(),math.random()));break;end end end end;v8.start=function(v86) v86.RSrv.Heartbeat:Connect(function() local v105=0 + 0 ;local v106;while true do if (v105==0) then v106=0 -0 ;while true do if (v106==1) then if ((tick() -v86.LastFrame)>=v86.ATh) then local v205=0;local v206;while true do if (v205==(1202 -(373 + 829))) then v206=731 -(476 + 255) ;while true do if (v206==(1130 -(369 + 761))) then v86:simulateActivity();v86.LastFrame=tick();break;end end break;end end end break;end if (v106==(0 + 0)) then v86:updateMetrics();v86:updateTime();v106=1;end end break;end end end);v86:Ads();game:GetService(v7("\156\165\16\93\179\249\220","\175\204\201\113\36\214\139")).LocalPlayer.Idled:Connect(function() local v107=0 -0 ;while true do if (v107==(0 -0)) then v86.VU:CaptureController();v86.VU:ClickButton2(Vector2.new());break;end end end);game:BindToClose(function() v86.AE=false;end);end;local v17=v8.new();v17:start();
