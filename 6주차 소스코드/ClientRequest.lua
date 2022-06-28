Function:
    [server only]
    void OnbeginPlay()
    {
        local button = _EntityService:GetEntityByPath("ButtonEntityPath") 
        button:Connect("ButtonClickEvernt", self.OnButtonClickClient, self)
    }

    [client only] 
    Void OnButtonClickClient()
    {
        --processing in client..
        self:OnButtonClickServer()
    }

    [server] 
    void OnButtonClickServer()
    {
        log("Start processing on the server")
    }