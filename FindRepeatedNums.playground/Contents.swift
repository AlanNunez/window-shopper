import UIKit

var numsOne = [1, 3, 4, 5, 6, 7]
var numsTwo = [1, 3, 5, 6, 6, 7]
var numsThree = [1, 3, 3, 5, 6, 1, 3, 3, 3, 5, 6, 7]
var numsFour = [1, 2, 1, 3, 2, 1]

var setOfNumbs = Set<Int>()
var dicOfNumbs = Dictionary<Int, (Int, Bool)>()
var min = Int.max
var temp = -1
var disrupt = Int.min

func getRepeatedValue(values: inout [Int]) -> Int {
    
for (index, num) in values.enumerated() {
    
    setOfNumbs.insert(num)
    if let (value, _ ) = dicOfNumbs[num] {
       dicOfNumbs[num]  = (value + index, true)
       disrupt = num
    } else {
        dicOfNumbs[num] = (index, false)
    }
}
let remaining =  values.count - setOfNumbs.count
    
    if remaining == 0 {
        return temp
    } else if remaining == 1 {
        temp = disrupt
        return temp
    } else if remaining > 1 {
        
        for (key, (total, repeated)) in dicOfNumbs {
            if total < min && repeated == true {
                min = total
                temp = key
            }
        }
    }
    return temp
}

getRepeatedValue(values: &numsFour)
