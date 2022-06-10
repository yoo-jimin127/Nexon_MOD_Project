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
            self.Hp = self.Hp - delta --해가 떠 있을 동안 Hp가 감소합니다.
            log("Vampire Hp : "..self.Hp) --현재 Hp를 Console 창에 표시합니다.
            if self.Hp < 0 then self.Hp = 0 end --Hp가 0까지 감소했다면 감소를 멈춥니다.
        end
    }

Entity Event Handler : 
    Entity map01 (/maps/map01)
    HandlerSunriseEvent(SunriseEvent event)
    {
        -- Parameters
        local isSunrise = event.isSunrise
        self.isSunrise = isSunrise
    }