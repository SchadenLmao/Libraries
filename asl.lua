local asl = {}

function asl:Notification(delay,timee,title,string)
    if delay ~= nil then
        wait(delay)
        game.StarterGui:SetCore("SendNotification", {
            Title = title; -- the title 
            Text = string; -- what the text says 
            Duration = timee; -- how long the notification should in secounds
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = title; -- the title 
            Text = string; -- what the text says 
            Duration = timee; -- how long the notification should in secounds
        })
    end
end

function asl:UseSynapseSettings()
    function asl:ProtectUI(ui)
        syn.protect_gui(ui)
    end
    function asl:UnprotectUI(ui)
        syn.unprotect_gui(ui)
    end
    function asl:CheckBeta(var)
        if syn.is_beta then
            var = true
        else
            var = false
        end
    end
    function asl:CreateSecureFunction(code)
        syn.create_secure_function(code)
    end
    function asl:RunSecureFunction(code)
        syn.run_secure_function(code)
    end
    function asl:FireSignal(signal,args)
        firesignal(signal,args)
    end
    function asl:FireCD(cd,distance)
        fireclickdetector(cd,distance)
    end
    function asl:FirePP(pp,distance)
        fireproximitypromt(pp,distance)
    end
end

return asl
