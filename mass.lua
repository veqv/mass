local function headAndLeg()
    local legTypes = {"LeftLowerLeg","LeftUpperLeg","LeftFoot"}
    for i = 1,6 do
        for _,v in pairs(legTypes) do
            game:GetService"Players".LocalPlayer.Character[v]:WaitForChild"OriginalSize":Destroy()
            pcall(function()
                game:GetService"Players".LocalPlayer.Character[v]:FindFirstChild"LeftKneeRigAttachment":Destroy()
            end)
        end
        game:GetService"Players".LocalPlayer.Character.Head:WaitForChild"OriginalSize":Destroy()
        game:GetService"Players".LocalPlayer.Character:WaitForChild"Humanoid":FindFirstChildOfClass"NumberValue":Destroy()
    end
end
headAndLeg()
    for i, v in next, chr.Humanoid:GetChildren() do
        if v:IsA("NumberValue") then
            delete()
            v:Destroy()
        end
    end