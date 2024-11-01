let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let a = input[0]
let b = input[1]

func comparison(a: Int, b: Int) -> String {
    if a > b {
        return ">"
    } else if a < b {
        return "<"
    } else {
        return "=="
    }
}

print(comparison(a: a, b: b))