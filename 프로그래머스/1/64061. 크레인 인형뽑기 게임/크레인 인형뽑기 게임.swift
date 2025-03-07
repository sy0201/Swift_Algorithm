import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var stacks = board
    var basket: [Int] = []
    var count = 0
    
    for move in moves {
        let col = move - 1
        
        for row in 0..<stacks.count {
            if stacks[row][col] != 0 {
                let kakao = stacks[row][col]
                stacks[row][col] = 0
                
                if let last = basket.last, last == kakao {
                    basket.removeLast()
                    count += 2
                } else {
                    basket.append(kakao)
                }
                break
            }
        }
    }
    
    return count
}