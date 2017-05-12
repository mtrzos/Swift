//Solution goes in Sources
struct ETL {
    
    static func transform(_ oldDictionary : Dictionary<Int, Array<String>>) -> Dictionary<String, Int> {
        var newDictionary = [String : Int]()
        
        for (intKey, array) in oldDictionary{
            ETL.iterateThroughArrayAndAddValuesToCorrespondingKeyEntry(&newDictionary, array, intKey)
        }
        
        return newDictionary
    }
    
    static func iterateThroughArrayAndAddValuesToCorrespondingKeyEntry(_ newDictionary : inout Dictionary<String,Int>, _ array : Array<String>, _ intKey : Int) -> Void {
        array.enumerated().forEach{(index, value) in
            newDictionary[array[index].lowercased()] = intKey
        }
    }
}
