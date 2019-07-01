import UIKit

var numsOne = [1, 3, 4, 5, 6, 7]
var numsTwo = [1, 3, 5, 6, 6, 7]
var numsThree = [1, 3, 3, 5, 6, 1, 3, 3, 3, 5, 6, 7]
var numsFour = [1, 2, 2, 5, 6, 1, 1, 3, 3, 5, 6, 7]

var setOfNumbs = Set<Int>()
var dicOfNumbs = Dictionary<Int, Int>()
var min = Int.max
var key = 0
var temp = -1
var disrupt = Int.min

func getRepeatedValue(values: inout [Int]) -> Int {
    
for (index, num) in values.enumerated() {
    
    setOfNumbs.insert(num)
    
    if let repeated = dicOfNumbs[num]  {
        if repeated < min {
             print("M", key)
            min = dicOfNumbs[num]!
            key = num
            print("K", key)
        }
        dicOfNumbs[num] = repeated + index
        disrupt = num
    }  else {
        dicOfNumbs[num] = index
    }
}

let remaining =  values.count - setOfNumbs.count
    
    if remaining == 0 {
        return temp
    } else if remaining == 1 {
        temp = disrupt
        return temp
    } else if remaining > 1 {
        temp = key
        print("T", key)
    }
    
    return temp
}

getRepeatedValue(values: &numsFour)
