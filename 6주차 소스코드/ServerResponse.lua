Property:
    [sync]
    number time=0

Function:
    [server only]
    void OnUpdate(number delta)
    {
        self.time = self.time + delta
        if self.time >= 3 then
            self.time = 0
            self:ShowToastMessage("Time Reset")
        end
    }

    [client] 
    void ShowToastMessage (string text)
    {
        local toastUiEntity = _EntityService:GetEntityByPath("UIEntityPath") 

        local textComponent = toastUIEntity.TextComponent

        -- print toast message
        textComponent.Text = text
        toastUIEntity:SetEnable(true)

        --reservate hide toast message
        local callback = function()
                toastUIEntity:SetEnable(false)
            end
        _TimerService:SetTimerOnce(callback,3)
    }