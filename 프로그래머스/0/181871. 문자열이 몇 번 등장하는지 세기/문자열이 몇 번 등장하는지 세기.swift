import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var count = 0
    let patCount = pat.count
    let myStringArray = Array(myString)
    print("patCount\(patCount)")
    print("myStringArray\(myStringArray)")

    for i in 0...(myStringArray.count - patCount) {
        let subString = myStringArray[i..<i + patCount]
        if String(subString) == pat {
            count += 1
        }
    }
    
    return count
}