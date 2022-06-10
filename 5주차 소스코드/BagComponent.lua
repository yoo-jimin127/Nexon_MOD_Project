BagComponent {
    Property:
        [None]
        Vector2 force = Vector2(0,0)
    Function:

    Entity Event Handler :
    HandleTriggerEnterEvent (TriggerEnterEvent event) :
    {
        -- Parameters
        local TriggerBodyEntity = event.TriggerBodyEntity
        --------------------------------------------------
        log("Trigger IN")
        local rigidbody = TriggerBodyEntity.RigidBodyComponent
        if rigidbody = all then
            return
        end
        
        rigidbody:SetForce(Vector2(8, 5))
    }

    HandleTriggerStayEvent (TriggerEnterEvent event) :
    {
        -- Parameters
        local TriggerBodyEntity = event.TriggerBodyEntity
        --------------------------------------------------
        log("Trigger STAY")
    }

    HandleTriggerLeaveEvent (TriggerEnterEvent event) :
    {
        -- Parameters
        local TriggerBodyEntity = event.TriggerBodyEntity
        --------------------------------------------------
        log("Trigger OUT")
    }
}