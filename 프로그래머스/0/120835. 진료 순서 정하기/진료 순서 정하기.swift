import Foundation

func solution(_ emergency:[Int]) -> [Int] {
let sortedArray = emergency.sorted(by: >)
    print(sortedArray)
    
    return emergency.map { value in
        sortedArray.firstIndex(of: value)! + 1
    }
}