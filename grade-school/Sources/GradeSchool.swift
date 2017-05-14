//Solution goes in Sources
struct GradeSchool {
    var roster : Dictionary<Int, [String]> = [:]
    var sortedRoster : Dictionary<Int, [String]> = [:]
    
    mutating func addStudent(_ name : String, grade grd : Int) -> Void {
        
        if var arr = roster[grd] {
            arr.append(name)
            roster[grd] = arr
        }else{
            roster[grd] = [name]
        }
        
        updateSortedRoster()
    }
    
    mutating func updateSortedRoster() -> Void {
        let sortedKeys = roster.keys.sorted(by: {$0 < $1} )
        for key in sortedKeys {
            self.sortedRoster[key] = roster[key]?.sorted(by: {$0 < $1})
        }
    }
    
    func studentsInGrade(_ grade : Int) -> [String] {
            return roster[grade] ?? []
    }
}
