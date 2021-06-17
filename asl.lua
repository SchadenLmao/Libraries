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

return asl
