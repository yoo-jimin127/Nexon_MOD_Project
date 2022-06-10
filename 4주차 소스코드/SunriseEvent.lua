Property : 
    [Sync]
    boolean isSunrise = false
    [Sync]
    number Hp = 0

Method : 
    [server Only]
    void OnUpdate (number delta)
    {
        if self.isSunrise == true then --해가 떴는지 체크합니다.
            self.Hp = self.Hp + delta --해가 떠 있을 동안 Hp가 증가합니다.
            log("Hunter Hp : "..self.Hp) --현재 체력을 Console 창에 표시합니다.
            if self.Hp >= 200 then self.Hp = 200 end --Hp가 200까지 증가했다면 증가를 멈춥니다.
        end
    }

Entity Event Handler : 
    entity map01 (/maps/map01)
    HandlerSunriseEvent(SunriseEvent event)
    {
        -- Parameters
        local isSunrise = event.isSunrise
        self.isSunrise = isSunrise
    }