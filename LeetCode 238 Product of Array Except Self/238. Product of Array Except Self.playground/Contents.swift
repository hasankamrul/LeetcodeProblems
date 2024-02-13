import Foundation
import UIKit

func productExceptSelf(_ nums: [Int]) -> [Int] {
    
    let n = nums.count
    
    // Initialize the result array to store prefix products
    var result = Array(repeating: 1, count: n)
    
    // Calculate prefix products
    var prefixProduct = 1
    for i in 0..<n {
        result[i] = result[i] * prefixProduct
        prefixProduct = prefixProduct * nums[i]
    }
    
    // Calculate suffix products and update the result array in-place
    var suffixProduct = 1
    for i in stride(from: n-1, through: 0, by: -1) {
        result[i] = result[i] * suffixProduct
        suffixProduct = suffixProduct * nums[i]
    }
    
    return result
}

// Example usage:
let nums1 = [2, 4, 1, 5]
print(productExceptSelf(nums1))
