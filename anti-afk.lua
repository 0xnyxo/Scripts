
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v17,v18) local v19={};for v41=1, #v17 do v6(v19,v0(v4(v1(v2(v17,v41,v41 + 1 )),v1(v2(v18,1 + (v41% #v18) ,1 + (v41% #v18) + 1 )))%256 ));end return v5(v19);end local v8={};v8.__index=v8;v8.new=function() local v20=0 + 0 ;local v21;while true do if (v20==(565 -(306 + 254))) then v21.TimerLabel.TextSize=34 -16 ;v21.TimerLabel.Text=v7("\54\179\134\50\131\66\234\219\109\137\82\224\219\103","\185\98\218\235\87");v21.PingLabel=Instance.new(v7("\255\57\63\242\242\171\201\57\43","\202\171\92\71\134\190"));v21.PingLabel.Parent=v21.F;v21.PingLabel.Size=UDim2.new(1,0 -0 ,1709.2 -(71 + 1638) ,1467 -(899 + 568) );v21.PingLabel.Position=UDim2.new(0 -0 ,0 + 0 ,0.6 -0 ,0 + 0 );v21.PingLabel.BackgroundTransparency=1 + 0 ;v21.PingLabel.TextColor3=Color3.fromRGB(827 -(426 + 146) ,700 -445 ,220 + 35 );v20=1136 -(87 + 1043) ;end if (v20==3) then v21.TL=Instance.new(v7("\143\83\209\180\22\81\50\196\183","\161\219\54\169\192\90\48\80"));v21.TL.Parent=v21.F;v21.TL.Size=UDim2.new(449 -(10 + 438) ,0 + 0 ,0.2 -0 ,0);v21.TL.Position=UDim2.new(0 + 0 ,1180 -(1123 + 57) ,0.05 + 0 ,254 -(163 + 91) );v21.TL.BackgroundTransparency=1;v21.TL.TextColor3=Color3.fromRGB(2185 -(1869 + 61) ,255,72 + 183 );v21.TL.Font=Enum.Font.GothamBold;v21.TL.TextSize=49 -29 ;v20=14 -10 ;end if (v20==(1 -0)) then v21.SG.DisplayOrder=137 + 863 ;v21.F=Instance.new(v7("\218\69\166\75\249","\38\156\55\199"));v21.F.Parent=v21.SG;v21.F.BackgroundColor3=Color3.fromRGB(37 -10 ,26 + 1 ,27);v21.F.BackgroundTransparency=1474 -(1329 + 145) ;v21.F.Size=UDim2.new(971 -(140 + 831) ,2150 -(1409 + 441) ,718 -(15 + 703) ,58 + 92 );v21.F.Position=UDim2.new(0.5 + 0 , -(588 -(262 + 176)),1721 -(345 + 1376) ,3 + 17 );v21.Corner=Instance.new(v7("\157\84\95\39\1\122\255\81","\35\200\29\28\72\115\20\154"));v20=690 -(198 + 490) ;end if (v20==(35 -27)) then v21.LastFrame=tick();v21.FrameCounter=529 -(406 + 123) ;v21.CurrentFPS=0;v21:makeDraggable();return v21;end if (v20==(0 -0)) then v21=setmetatable({},v8);v21.P=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167")).LocalPlayer;v21.UIS=game:GetService(v7("\22\222\47\215\213\45\221\63\209\207\38\223\60\204\255\38","\156\67\173\74\165"));v21.RSrv=game:GetService(v7("\6\162\71\37\185\52\80\61\180\76","\38\84\215\41\118\220\70"));v21.VU=game:GetService(v7("\102\31\48\6\235\81\26\23\1\251\66","\158\48\118\66\114"));v21.SG=Instance.new(v7("\152\39\2\51\118\171\220\190\45","\155\203\68\112\86\19\197"));v21.SG.Parent=v21.P.PlayerGui;v21.SG.Name=v7("\103\211\34\245\97\94\206\223\83\212","\152\38\189\86\156\32\24\133");v20=1;end if (v20==(1208 -(696 + 510))) then v21.Corner.CornerRadius=UDim.new(0 -0 ,6 + 9 );v21.Corner.Parent=v21.F;v21.TopLine=Instance.new(v7("\63\173\208\210\136","\84\121\223\177\191\237\76"));v21.TopLine.Parent=v21.F;v21.TopLine.BackgroundColor3=Color3.fromRGB(1517 -(1091 + 171) ,42 + 213 ,613 -358 );v21.TopLine.BorderSizePixel=0 -0 ;v21.TopLine.Size=UDim2.new(3 -2 ,0 + 0 ,374 -(123 + 251) ,9 -7 );v21.TopLine.Position=UDim2.new(698 -(208 + 490) ,0 + 0 ,0.25 + 0 ,836 -(660 + 176) );v20=1 + 2 ;end if (v20==(209 -(14 + 188))) then v21.CloseButton.TextColor3=Color3.fromRGB(255,1682 -(41 + 1386) ,930 -(534 + 141) );v21.CloseButton.Font=Enum.Font.GothamBold;v21.CloseButton.TextSize=10 + 14 ;v21.CloseButton.Text="X";v21.CloseButton.MouseButton1Click:Connect(function() v21.SG:Destroy();end);v21.StartTime=os.time();v21.ATh=5 + 0 ;v21.AE=true;v20=8 + 0 ;end if (v20==(8 -4)) then v21.TL.Text=v7("\104\76\20\44\9\99\38\14\9\94\64\8\72\70\5\101\75\91\64\19\80\90\15\43","\69\41\34\96");v21.TimerLabel=Instance.new(v7("\136\198\207\30\46\42\190\198\219","\75\220\163\183\106\98"));v21.TimerLabel.Parent=v21.F;v21.TimerLabel.Size=UDim2.new(1 -0 ,0 -0 ,0.3 -0 ,0 -0 );v21.TimerLabel.Position=UDim2.new(0 + 0 ,0,0.3 -0 ,0 + 0 );v21.TimerLabel.BackgroundTransparency=397 -(115 + 281) ;v21.TimerLabel.TextColor3=Color3.fromRGB(593 -338 ,212 + 43 ,176 + 79 );v21.TimerLabel.Font=Enum.Font.Gotham;v20=1262 -(1043 + 214) ;end if (v20==(22 -16)) then v21.PingLabel.Font=Enum.Font.Gotham;v21.PingLabel.TextSize=43 -25 ;v21.PingLabel.Text=v7("\25\200\34\143\115\129\124\200\36\210\108\148\105\231\28\187\115\129\124","\232\73\161\76");v21.CloseButton=Instance.new(v7("\143\220\90\73\60\174\205\86\82\16","\126\219\185\34\61"));v21.CloseButton.Parent=v21.F;v21.CloseButton.Size=UDim2.new(0 -0 ,897 -(550 + 317) ,0 -0 ,42 -12 );v21.CloseButton.Position=UDim2.new(2 -1 , -(320 -(134 + 151)),1665 -(970 + 695) ,5);v21.CloseButton.BackgroundTransparency=1 -0 ;v20=1997 -(582 + 1408) ;end end end;v8.makeDraggable=function(v22) local v23=0;local v24;local v25;local v26;local v27;while true do if (v23==(0 -0)) then v24,v25,v26,v27=nil;v22.F.InputBegan:Connect(function(v121) if ((v121.UserInputType==Enum.UserInputType.Touch) or (v121.UserInputType==Enum.UserInputType.MouseButton1)) then local v124=320 -(53 + 267) ;while true do if (v124==(0 + 0)) then v24=true;v26=v121.Position;v124=1 -0 ;end if (v124==1) then v27=v22.F.Position;v121.Changed:Connect(function() if (v121.UserInputState==Enum.UserInputState.End) then v24=false;end end);break;end end end end);v23=1;end if (v23==(3 -2)) then v22.UIS.InputChanged:Connect(function(v122) if (v24 and ((v122.UserInputType==Enum.UserInputType.Touch) or v122.UserInputType.MouseMovement)) then local v125=1824 -(1195 + 629) ;local v126;while true do if ((0 -0)==v125) then v126=v122.Position-v26 ;v22.F.Position=UDim2.new(v27.X.Scale,v27.X.Offset + v126.X ,v27.Y.Scale,v27.Y.Offset + v126.Y );break;end end end end);break;end end end;v8.updateMetrics=function(v28) local v29=241 -(187 + 54) ;local v30;while true do if (v29==(781 -(162 + 618))) then v30=math.floor(game:GetService(v7("\63\218\95\102\109","\135\108\174\62\18\30\23\147")).Network.ServerStatsItem[v7("\146\232\62\202\88\158\58\201\177","\167\214\137\74\171\120\206\83")]:GetValue());v28.PingLabel.Text=string.format(v7("\187\249\60\90\162\231\206\244\114\80\235\231\151\176\20\109\203\253\203\181\54","\199\235\144\82\61\152"),v30,v28.CurrentFPS);break;end if (v29==0) then v28.FrameCounter=v28.FrameCounter + 1 + 0 ;if ((tick() -v28.LastFrame)>=(1 + 0)) then local v123=0 -0 ;while true do if (v123==(0 -0)) then v28.CurrentFPS=v28.FrameCounter;v28.FrameCounter=0 + 0 ;v123=1;end if ((1 -0)==v123) then v28.LastFrame=tick();break;end end end v29=1637 -(1373 + 263) ;end end end;v8.updateTime=function(v31) local v32=os.time() -v31.StartTime ;local v33=math.floor(v32/(1830 + 1770) );local v34=math.floor((v32%(4600 -(451 + 549)))/(19 + 41) );local v35=math.floor(v32%(93 -33) );v31.TimerLabel.Text=string.format(v7("\51\31\180\46\93\86\252\123\85\18\227\110\87\68\189\113\66\70\235\47","\75\103\118\217"),v33,v34,v35);end;v8.simulateActivity=function(v37) if v37.AE then v37.VU:CaptureController();v37.VU:ClickButton2(Vector2.new(math.random(),math.random()));end end;v8.start=function(v38) local v39=0 -0 ;local v40;while true do if (v39==(1384 -(746 + 638))) then v40=0 + 0 ;while true do if (v40==(0 -0)) then v38.RSrv.Heartbeat:Connect(function() v38:updateMetrics();v38:updateTime();if ((tick() -v38.LastFrame)>=v38.ATh) then local v134=341 -(218 + 123) ;while true do if (v134==(1581 -(1535 + 46))) then v38:simulateActivity();v38.LastFrame=tick();break;end end end end);game:GetService(v7("\247\88\113\13\188\12\212","\126\167\52\16\116\217")).LocalPlayer.Idled:Connect(function() v38.VU:CaptureController();v38.VU:ClickButton2(Vector2.new());end);v40=1 + 0 ;end if (v40==1) then game:BindToClose(function() v38.AE=false;end);break;end end break;end end end;local v16=v8.new();v16:start();
