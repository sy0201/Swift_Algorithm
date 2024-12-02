import Foundation

func solution(_ num_list:[Int]) -> Int {
    let product = num_list.reduce(1, *)
    let sum = num_list.reduce(0, +)
    
    if product < sum * sum {
        return 1
    } else {
        return 0
    }
}