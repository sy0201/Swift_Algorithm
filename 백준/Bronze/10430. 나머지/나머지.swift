let input = readLine()!.split(separator: " ").compactMap { Int($0) }

let a = input[0]
let b = input[1]
let c = input[2]

let firstResult = (a + b) % c
let secondResult = ((a % c) + (b % c)) % c
let thirdResult = (a * b) % c
let fourthResult = ((a % c) * (b % c)) % c

print(firstResult)
print(secondResult)
print(thirdResult)
print(fourthResult)
