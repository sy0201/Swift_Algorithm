import Foundation

func solution(_ babbling: [String]) -> Int {
    let wordArray = ["aya", "ye", "woo", "ma"]

    return babbling.filter { word in 
        var temp = word
        print("temp \(temp)")
        for i in wordArray {
           temp = temp.replacingOccurrences(of: i, with: " ")
        }
        return temp.trimmingCharacters(in: .whitespaces).isEmpty
    }.count
}