//Solution goes in Sources
struct SecretHandshake {
    var commands : [String]
    
    init(_ valueInit : Int) {
        switch valueInit {
        case 1:
            commands = ["wink"]
        case 2:
            commands = ["double blink"]
        case 4:
            commands = ["close your eyes"]
        case 8:
            commands = ["jump"]
        default:
            commands = ["jump"]
        }
    }
}
