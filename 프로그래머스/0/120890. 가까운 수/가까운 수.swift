import Foundation
// [3, 10, 28]
func solution(_ array:[Int], _ n:Int) -> Int {
    // 배열의 한 요소를 저장
    var filteredValue = array[0] //3
    print("filteredValue \(filteredValue)")
    // 배열의 한 요소를 n으로 뺀 값을 저장
    var filteredNumbers = abs(array[0] - n) //3 - 20
    print("filteredNumbers \(filteredValue)")
    
    for num in array {
        let diff = abs(num - n) // 3 - 20 diff == -17
        
        // 17 < -17 || 17 == -17 && 3 < 3
        if diff < filteredNumbers || 
        diff == filteredNumbers && num < filteredValue {
            filteredValue = num
            filteredNumbers = diff
        }
    }
        return filteredValue
}
    
