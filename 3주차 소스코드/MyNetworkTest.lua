MyNetworkTest {
    Property:
        [Sync]
        number score = 0
    
    Function:
        --@server only
        void OnBeginPlay() {
            log("BEGIN PLAY")
            self:ClientOnly()
            self:ServerOnly()
            self:Client()
            self:Server()
            self:Multicast()
        }

        --@client only
        void ClientOnly() {
            log("CLIENT ONLY")
        }

        --@client
        void Client (string arg1) {
            log("CLIENT" .. arg1)
        }

        --@server only
        void ServerOnly() {
            log("SERVER ONLY")
        }

        --@server
        void Server() {
            log("SERVER")
        }

        --@multicast
        void Multicast() {
            log("MULTICAST")
        }

    Entity Event Handler :
}   