import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var intArray: [Int] = []
    var current: Int = 0
    for sum in Array(i...j) {
        intArray.append(sum)
    }
    current = intArray.flatMap { String($0) }.reduce(0) { current, next in
        guard next == Character(String(k)) else { return current }

        return current + 1
    }
    
    return current
}