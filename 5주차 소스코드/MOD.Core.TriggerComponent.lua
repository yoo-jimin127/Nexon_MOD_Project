MOD.Core.TriggerComponent {
    Property:
        [Sync]
        Vector2 BoxOffset = (0.000, 0.000)
        [Sync]
        Vector2 BoxSize = (0.000, 0.000)
        string colliderName
        [Sync]
        boolean Enable = true
        boolean EnableIsHierachy
        Entity Entity

    Function:
    boolean IsClient()
    boolean IsServer()

    Event:
        TriggerEnterEvent(Entity TriggerBodyEntity)
        TriggerLeaveEvent(Entity TriggerBodyEntity)
        TriggerStayEvent(Entity TriggerBodyEntity)
}