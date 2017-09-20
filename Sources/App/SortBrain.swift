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

        let sortedArray: [Int]
        
        switch algorithm {
        case .merge:
            sortedArray = mergeSort(array: array)
        }
        
        return sortedArray
    }
}

// MARK: - Merge Sort
extension SortBrain {
    fileprivate static func mergeSort(array: [Int]) -> [Int] {
        let count = array.count
        
        // if the number of elements is <= 1, return same array
        guard array.count > 1 else { return array }
        
        let middleIndex = (count - 1) / 2
        let lastIndex = count - 1
        
        return merge(left: mergeSort(array: array[0...middleIndex].array),
                     right: mergeSort(array: array[(middleIndex + 1)...lastIndex].array))
    }
    
    private static func merge(left: [Int], right: [Int]) -> [Int] {
        var resultArr = [Int](repeating: 0, count: left.count + right.count)
        
        // merge left and right arrays
        var i = 0 // left array index
        var j = 0 // right array index
        var k = 0 // merged array index
        
        while i < left.count && j < right.count {
            if left[i] <= right[j] {
                resultArr[k] = left[i]
                i += 1
            } else {
                resultArr[k] = right[j]
                j += 1
            }
            k += 1
        }
        
        // copy remaining elements in the left array
        while i < left.count {
            resultArr[k] = left[i]
            i += 1
            k += 1
        }
        
        // copy remaining elements in the right array
        while j < right.count {
            resultArr[k] = right[j]
            j += 1
            k += 1
        }
        
        return resultArr
    }
}








