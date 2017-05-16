//Solution goes in Sources
struct SecretHandshake {
    var commands : [String] = []
    
    init(_ inputCode : Int) {
        var code = inputCode
        var count = 0
        
        while code > 0 {
            
            if((code % 2) == 1){
                addSignalToCommands(count)
            }
            
            code = code / 2
            count += 1
        }
    }
    
    mutating func addSignalToCommands( _ count : Int) -> Void {
        switch count {
        case 0:
            commands.append("wink")
        case 1:
            commands.append("double blink")
        case 2:
            commands.append("close your eyes")
        case 3:
            commands.append("jump")
        case 4:
            commands.reverse()
        default:
            commands = []
        }
    }
}
