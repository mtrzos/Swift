//Solution goes in Sources
struct Isogram {
    
    static let validCharactersSet = Set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ".characters)
    
    static func isIsogram(_ word : String) -> Bool {
        
        let filteredCharacters = word.lowercased().characters.filter({validCharactersSet.contains($0)})
        var characterSet : Set<Character> = [];
        filteredCharacters.forEach({characterSet.insert($0)})
        
        return filteredCharacters.count == characterSet.count
    }
}
