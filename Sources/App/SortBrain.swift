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
    static func sort(array: [Int], algorithm: SortAlgorithm) -> [Int] {
        
        // TODO: implement algorithm manually
        let sortedArray = array.sorted()
        return sortedArray
    }
    
    private func mergeSort(array: [Int], leftIndex: Int, rightIndex: Int) -> [Int] {
        // if the number of elements is <= 1, return same array
        guard leftIndex < rightIndex else { return array }
        
        let middleIndex = (leftIndex + rightIndex) / 2
        
        let leftHalf =
        let rightHalf = array[middleIndex+1...rightIndex]
        
        let sortedLeftHalf = mergeSort(array: array[0...middleIndex], leftIndex: <#T##Int#>, rightIndex: <#T##Int#>)
        
        return []
    }
    
    
}
