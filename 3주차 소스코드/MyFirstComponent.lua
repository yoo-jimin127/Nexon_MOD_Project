MyFirstComponent {
    Property:
        [Sync]
        number sum = 0

    Function:
    --@server only
    void OnBeginPlay() {
        log("Hello, component")
    self.sum = 5
    log("sum is" .. self.sum)
    self:MyFunction()
    }

    --@server only
    void OnUpdate(number delta) {
        log("update")
        local myEntityPosition = self.Entity.TransformComponent.Position
        log(myEntityPosition)

        for count=1, 5, 1 do
        	myEntityPosition.x = myEntityPosition.x + 0.5
        	myEntityPosition.y = myEntityPosition.y + 0.5
        	wait(1)
        end

        self.Entity.TransformComponent.Scale.x = 2
        self.Entity.TransformComponent.Scale.y = 2
    }

    --@server only
    void OnEndPlay() {
        log("END")
    }

    void MyFunction() {
        log("My Function")
    }
}