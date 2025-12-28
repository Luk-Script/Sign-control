--[[
 _____       _                               
/  ___|     | |                              
\ `--.  __ _| | ___   _ _ __ _ __ ___   ___  
 `--. \/ _` | |/ / | | | '__| '_ ` _ \ / _ \ 
/\__/ / (_| |   <| |_| | |  | | | | | | (_) |
\____/ \__,_|_|\_\\__,_|_|  |_| |_| |_|\___/ 
                                                               
         Made By Sakurmo

]]--

--[[ 
    Sakurmo Sign Hub - Silent & Powerful
    Made By Sakurmo
]]--

local _0x5F2A=game:GetService("CoreGui");local _0x1A2B=game:GetService("TweenService");local _0x3C4D=game:GetService("RunService");local _0x7E8F=game:GetService("UserInputService");local _0x1122=game:GetService("Players");repeat task.wait() until game:IsLoaded();local _0xKK9=Instance.new("ScreenGui",_0x5F2A);_0xKK9.Name="SakurmoSignHub";local _0xMM1=Instance.new("Frame",_0xKK9);_0xMM1.Size=UDim2.new(0,450,0,280);_0xMM1.Position=UDim2.new(0.5,-225,0.5,-140);_0xMM1.BackgroundColor3=Color3.fromRGB(20,20,20);_0xMM1.BackgroundTransparency=0.1;_0xMM1.BorderSizePixel=0;local _0xTB=Instance.new("Frame",_0xMM1);_0xTB.Size=UDim2.new(1,0,0,60);_0xTB.BackgroundTransparency=1;local _0xTL=Instance.new("TextLabel",_0xTB);_0xTL.Size=UDim2.new(1,-20,1,0);_0xTL.Position=UDim2.new(0,10,0,0);_0xTL.BackgroundTransparency=1;_0xTL.Text="표지판 조종기";_0xTL.TextColor3=Color3.new(1,1,1);_0xTL.TextScaled=true;_0xTL.Font=Enum.Font.GothamBold;local _0xSB=Instance.new("TextBox",_0xMM1);_0xSB.Size=UDim2.new(1,-60,0,50);_0xSB.Position=UDim2.new(0,30,0,80);_0xSB.BackgroundColor3=Color3.fromRGB(35,35,35);_0xSB.PlaceholderText="메세지 입력..";_0xSB.Text="";_0xSB.TextColor3=Color3.new(1,1,1);_0xSB.TextScaled=true;_0xSB.Font=Enum.Font.Gotham;local _0xTR=Instance.new("TextBox",_0xMM1);_0xTR.Size=UDim2.new(1,-60,0,50);_0xTR.Position=UDim2.new(0,30,0,140);_0xTR.BackgroundColor3=Color3.fromRGB(45,45,45);_0xTR.PlaceholderText="대상 플레이어 이름 (비우면 전체)";_0xTR.Text="";_0xTR.TextColor3=Color3.new(1,1,1);_0xTR.TextScaled=true;_0xTR.Font=Enum.Font.Gotham;local _0xV1="";local _0xV2={};local function _0xRF()local _0xV3={};for _,_0xP in pairs(_0x1122:GetPlayers())do if _0xP.Character then for _,_0xO in pairs(_0xP.Character:GetDescendants())do if _0xO:IsA("RemoteEvent")or _0xO:IsA("RemoteFunction")then table.insert(_0xV3,{obj=_0xO,owner=_0xP.Name})end end end end;_0xV2=_0xV3 end;task.spawn(function()while true do _0xRF();task.wait(1)end end);for i=1,10 do task.spawn(function()while true do if _0xV1~=""then local _0xT=_0xTR.Text:lower();for _,_0xD in pairs(_0xV2)do if _0xT==""or _0xD.owner:lower()==_0xT then pcall(function()if _0xD.obj:IsA("RemoteEvent")then _0xD.obj:FireServer(_0xV1)else _0xD.obj:InvokeServer(_0xV1)end end)end end end;task.wait()end end)end;local _0xD1,_0xD2,_0xD3;_0xTB.InputBegan:Connect(function(_0xI)if _0xI.UserInputType==Enum.UserInputType.MouseButton1 then _0xD1=true;_0xD2=_0x7E8F:GetMouseLocation();_0xD3=_0xMM1.Position end end);_0x7E8F.InputEnded:Connect(function(_0xI)if _0xI.UserInputType==Enum.UserInputType.MouseButton1 then _0xD1=false end end);_0x3C4D.RenderStepped:Connect(function()if _0xD1 then local _0xM=_0x7E8F:GetMouseLocation();local _0xDL=_0xM-_0xD2;_0xMM1.Position=UDim2.new(_0xD3.X.Scale,_0xD3.X.Offset+_0xDL.X,_0xD3.Y.Scale,_0xD3.Y.Offset+_0xDL.Y)end end);_0xSB:GetPropertyChangedSignal("Text"):Connect(function()_0xV1=_0xSB.Text end);print("표지판 조종기 실행 완료. -Made By Sakurmo-")
