Property : 
    [Sync]
    boolean isSunrise = false

Method : 
    [server only]
    void OnUpdate (number delta)
    {
        if self._T.Time == nil then self._T.Time = 0 end
        self._T.Time = self._T.Time + delta
        
        if self._T.Time >= 5 then --5초마다 번갈아 해가 뜨고 집니다.
            self._T.Time = 0
            if self.isSunrise == true then
                self.isSunrise = false
            else
                self.isSunrise = true --해가 떠 있는 상태 외에 나머지 상태는 isSunrise가 false입니다.
            end
            log(self.isSunrise)
            self:SendEvent(self.isSunrise)
        end
    }

    [server]
    void SendEvent (boolean isSunrise)
    {
        local event = SunriseEvent()
        event.isSunrise = isSunrise
        self.Entity:SendEvent(event)
        
        self.isSunrise = isSunrise
        self._T.Time = 0
    }