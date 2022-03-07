public extension Collection where Element: Comparable {
    /**
     Returns a list of all elements sorted according to natural sort order of the value returned by specified selector function.
         
         let greetings = ["Hi", "Привет", "Hallo", "Привіт"]
         greetings.sortedBy { $0.count }
     
     */
    func sortedBy<T: Comparable>(_ selector: (Element) -> T) -> [Self.Element] {
        sorted { selector($0) < selector($1) }
    }
    
    /**
     Sorts elements in the array in-place descending according to natural sort order of the value returned by specified selector function.
         
         let greetings = ["Hi", "Привет", "Hallo", "Привіт"]
         greetings.sortedByDescending { $0.count }
     
     */
    func sortedByDescending<T: Comparable>(_ selector: (Element) -> T) -> [Self.Element] {
        sorted { selector($0) > selector($1) }
    }
}
