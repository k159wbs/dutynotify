if Config.DutyNotify.Police.Enabled then
    TMC.Commands.Add(Config.DutyNotify.Police.Command, "The amount of police officers online", {}, true, function(source, args)
        local player = TMC.Functions.GetPlayer(source)
        if not player then return end
        local count = TMC.Common.OnlinePlayersWithJob(Config.DutyNotify.Police.Job, true)
        local message = ('There are %d police officer(s) on duty.'):format(count)
        TMC.Functions.SimpleNotify(source, message, 'info', 5000)
    end, "user")
end

if Config.DutyNotify.EMS.Enabled then
    TMC.Commands.Add(Config.DutyNotify.EMS.Command, "The amount of EMS Workers online", {}, true, function(source, args)
        local player = TMC.Functions.GetPlayer(source)
        if not player then return end
        local count = TMC.Common.OnlinePlayersWithJob(Config.DutyNotify.EMS.Job, true)
        local message = ('There are %d EMS worker(s) on duty.'):format(count)
        TMC.Functions.SimpleNotify(source, message, 'info', 5000)
    end, "user")
end