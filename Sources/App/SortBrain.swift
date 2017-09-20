//
//  SortBrain.swift
//  DSortServer
//
//  Created by Carlos Villanueva Ousset on 9/19/17.
//
//

import Foundation

enum SortAlgorithm {
    case merge
}

struct SortBrain {
    static func sort<U: Comparable>(type: U.Type, array: [U], algorithm: SortAlgorithm) -> [U] {
        
        // TODO: implement algorithm manually
        let sortedArray = array.sorted()
        return sortedArray
    }
}
