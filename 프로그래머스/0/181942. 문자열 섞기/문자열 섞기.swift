import Foundation

func solution(_ str1:String, _ str2:String) -> String {

    var resultString = ""
    
    for i in 0..<str1.count {
        let index1 = str1.index(str1.startIndex, offsetBy: i)
        let index2 = str2.index(str2.startIndex, offsetBy: i)
        
        resultString += "\(str1[index1])\(str2[index2])"
    }
    
    return resultString
}