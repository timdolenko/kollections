public extension Collection {
    
    /**
     Returns a `Dictionary` containing key-value pairs provided by transform function applied to elements of the given array.

     If any of two pairs would have the same key the last one gets added to the map.

     The returned map preserves the entry iteration order of the original array.
     */
    func associate<T, V>(
        _ transform: (Element) throws -> (T,V)
    ) rethrows -> [T: V] {
        var dict = [T:V]()
        for element in self {
            let (t, v) = try transform(element)
            dict[t] = v
        }
        return dict
    }
    
    /**
     Returns a `Dictionary` containing the elements from the given array indexed by the key returned from `keySelector` function applied to each element.

     If any two elements would have the same key returned by `keySelector` the last one gets added to the map.

     The returned map preserves the entry iteration order of the original array.
     */
    func associateBy<T>(
        _ keySelector: (Element) throws -> T
    ) rethrows -> [T: Element] {
        try associate { (try keySelector($0), $0) }
    }
    
    /**
     Returns a `Dictionary` where keys are elements from the given array and values are produced by the `valueSelector` function applied to each element.

     If any two elements are equal, the last one gets added to the map.

     The returned map preserves the entry iteration order of the original array.
     */
    func associateWith<T>(
        _ valueSelector: (Element) throws -> T
    ) rethrows -> [Element: T] {
        try associate { ($0, try valueSelector($0)) }
    }
}
