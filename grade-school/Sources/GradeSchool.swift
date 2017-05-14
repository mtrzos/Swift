//Solution goes in Sources
struct GradeSchool {
    var roster : Dictionary<Int, [String]> = [:]
    var sortedRoster : Dictionary<Int, [String]> = [:]
    
    mutating func addStudent(_ name : String, grade grd : Int) -> Void {
        roster[grd] = (roster[grd] ?? []) + [name]
        updateSortedRoster()
    }
    
    mutating func updateSortedRoster() -> Void {
        for key in roster.keys.sorted(by: {$0 < $1}) {
            self.sortedRoster[key] = roster[key]?.sorted(by: {$0 < $1})
        }
    }
    
    func studentsInGrade(_ grade : Int) -> [String] {
            return roster[grade] ?? []
    }
}
