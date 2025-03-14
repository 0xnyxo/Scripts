local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v66, v67)
    local v68 = {};
    for v74 = 1, #v66 do
        v6(v68, v0(v4(v1(v2(v66, v74, v74 + 1)),
                      v1(v2(v67, 1 + (v74 % #v67), 1 + (v74 % #v67) + 1))) % 256));
    end
    return v5(v68);
end
local v8 = Instance.new(v7("\226\192\201\32\227\181\224\11\216",
                           "\126\177\163\187\69\134\219\167"));
local v9 = Instance.new(v7("\5\223\43\200\249", "\156\67\173\74\165"));
local v10 = Instance.new(v7("\0\178\81\2\144\39\68\49\187",
                            "\38\84\215\41\118\220\70"));
local v11 = Instance.new(
                v7("\100\19\58\6\210\81\20\39\30", "\158\48\118\66\114"));
local v12 = Instance.new(v7("\159\33\8\34\81\176\239\191\43\30",
                            "\155\203\68\112\86\19\197"));
local v13 = Instance.new(v7("\115\244\21\243\82\118\224\234",
                            "\152\38\189\86\156\32\24\133"));
local v14 = Instance.new(v7("\201\126\132\73\238\89\162\84", "\38\156\55\199"));
local v15 = Instance.new(v7("\156\120\100\60\63\117\248\70\164",
                            "\35\200\29\28\72\115\20\154"));
local v16 = Instance.new(v7("\45\186\201\203\161\45\54\28\179",
                            "\84\121\223\177\191\237\76"));
local v17 = game:GetService(v7("\143\65\204\165\52\99\53\211\173\95\202\165",
                               "\161\219\54\169\192\90\48\80"));
v8.Parent = game.Players.LocalPlayer:WaitForChild(v7(
                                                      "\121\78\1\60\76\80\39\48\64",
                                                      "\69\41\34\96"));
v8.Name = v7("\145\194\222\4\22\46\178\194\217\9\7\12\169\202",
             "\75\220\163\183\106\98");
v9.Parent = v8;
v9.BackgroundColor3 = Color3.fromRGB(5 + 22, 47 - 20, 27 + 0);
v9.Size = UDim2.new(0 - 0, 1191 - (368 + 423), 0, 547 - 347);
v9.Position = UDim2.new(1817.5 - (1703 + 114), 0 - 0, 18.5 - (10 + 8), 0 - 0);
v9.AnchorPoint = Vector2.new(0.5 - 0, 442.5 - (416 + 26));
v9.BorderSizePixel = 0 - 0;
v9.ZIndex = 2;
v9.BackgroundTransparency = 1 + 0;
v13.Parent = v9;
v13.CornerRadius = UDim.new(0 - 0, 453 - (145 + 293));
v10.Parent = v9;
v10.BackgroundTransparency = 3 - 2;
v10.Size = UDim2.new(431 - (44 + 386), 1486 - (998 + 488), 0.2 + 0, 0 + 0);
v10.Font = Enum.Font.GothamBold;
v10.Text = v7("\47\187\130\57\205\7\180\138\57\218\7", "\185\98\218\235\87");
v10.TextColor3 = Color3.fromRGB(1027 - (201 + 571), 1393 - (116 + 1022),
                                2185 - (1869 + 61));
v10.TextScaled = true;
v10.ZIndex = 1 + 1;
v10.TextTransparency = 3 - 2;
v11.Parent = v9;
v11.BackgroundTransparency = 1 - 0;
v11.Size = UDim2.new(1 + 0, -(83 - 63), 0.5 + 0, -(36 - 26));
v11.Position = UDim2.new(0 - 0, 10 + 0, 859.2 - (814 + 45), 0 - 0);
v11.Font = Enum.Font.Gotham;
v11.Text =
    "The script is currently under maintenance. Please check back later! \n\n - @Vyxon";
v11.TextColor3 = Color3.fromRGB(11 + 189, 200, 71 + 129);
v11.TextWrapped = true;
v11.TextScaled = true;
v11.ZIndex = 720 - (15 + 703);
v11.TextTransparency = 886 - (261 + 624);
v12.Parent = v9;
v12.BackgroundColor3 = Color3.fromRGB(119 + 136, 151 - 66, 523 - (262 + 176));
v12.Size = UDim2.new(1080.3 - (1020 + 60), 1423 - (630 + 793), 0.2 - 0, 0 - 0);
v12.Position = UDim2.new(0.35 + 0, 0 - 0, 0.75 - 0, 1747 - (760 + 987));
v12.Font = Enum.Font.GothamBold;
v12.Text = v7("\232\48\40\245\219", "\202\171\92\71\134\190");
v12.TextColor3 =
    Color3.fromRGB(2168 - (1789 + 124), 1021 - (745 + 21), 42 + 213);
v12.TextScaled = true;
v12.ZIndex = 1 + 1;
v12.BorderSizePixel = 0 - 0;
v12.TextTransparency = 1;
v14.Parent = v12;
v14.CornerRadius = UDim.new(0, 39 - 29);
local function v65()
    local v69 = TweenInfo.new(375 - (123 + 251), Enum.EasingStyle.Quad,
                              Enum.EasingDirection.Out);
    local v70 = v17:Create(v9, v69, {
        [v7(
            "\11\192\47\131\46\211\35\157\39\197\24\154\40\207\63\152\40\211\41\134\42\216",
            "\232\73\161\76")] = 0
    });
    local v71 = v17:Create(v10, v69, {
        [v7("\143\220\90\73\42\169\216\76\78\14\186\203\71\83\29\162",
            "\126\219\185\34\61")] = 0 + 0
    });
    local v72 = v17:Create(v11, v69, {
        [v7("\56\203\70\102\74\101\242\233\31\222\95\96\123\121\240\254",
            "\135\108\174\62\18\30\23\147")] = 0 + 0
    });
    local v73 = v17:Create(v12, v69, {
        [v7("\130\236\50\223\44\188\50\201\165\249\43\217\29\160\48\222",
            "\167\214\137\74\171\120\206\83")] = 1055 - (87 + 968)
    });
    v70:Play();
    v71:Play();
    v72:Play();
    v73:Play();
end
v12.MouseButton1Click:Connect(function() v8:Destroy(); end);
v65();
