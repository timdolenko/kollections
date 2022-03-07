public extension Collection {

    /**
     Returns `true` if all elements match the given predicate.
     */
    func all(_ predicate: (Element) throws -> Bool) rethrows -> Bool {
        try allSatisfy(predicate)
    }
    
    /**
     Returns `true` if at least one element matches the given predicate.
     */
    func any(_ predicate: (Element) throws -> Bool) rethrows -> Bool {
        for element in self {
            if try predicate(element) {
                return true
            }
        }
        return false
    }
}
