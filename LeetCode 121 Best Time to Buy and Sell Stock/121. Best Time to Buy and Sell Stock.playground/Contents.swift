import Foundation
import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    
    var leftP = 0
    var rightP = 1
    var mProfit = 0
    
    while rightP < prices.count {
        
        if prices[leftP] < prices[rightP] {
            
            var profit = prices[rightP] - prices[leftP]
            mProfit = max(mProfit, profit)
        } else {
            leftP = rightP
        }
        rightP += 1
    }
    
    return mProfit
}
var prices = [7, 6, 4, 3, 1]

maxProfit(prices)
