import Foundation
import UIKit

//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//
//Input: nums = [3,2,4], target = 6
//Output: [1,2]
//
//Input: nums = [3,3], target = 6
//Output: [0,1]

//https://www.programiz.com/swift-programming/dictionary

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // Create a dictionary to store the complement of each element
    var complementDict = [Int:Int]()
    
    // Iterate through the array
    for (index, value) in nums.enumerated() {
        // Calculate the complement needed to reach the target
        let complement = target - value
        
        // Check if the complement is already in the dictionary
        if let complementIndex = complementDict[complement] {
            // If found, return the indices of the two numbers
            return [complementIndex, index]
        }
        
        // If not found, add the current number and its index to the dictionary
        complementDict[value] = index
    }
    
    // If no solution is found, return an empty array or handle it as needed
        return []
}


var nums = [2,7,11,15]
var target = 9
print(twoSum(nums, target))
