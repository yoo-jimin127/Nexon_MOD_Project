void onBeginPlay() {
    for i = 1, 10 do
    	local logEvent = LogEvent()
    	LogEvent.message = tostring()
        self.Entity:SendEvent(LogEvent)

        wait(1)
    end
}

HandleLogEvent(LogEvent event) {
    -- parameters
    local message = event.message
    --------------------------------
    log(message)
}