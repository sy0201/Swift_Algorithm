let line = readLine()!
let lineArr = line.split(separator: " ")
var hour = Int(lineArr[0])!
var minute = Int(lineArr[1])!

if minute < 45 {
    hour -= 1
    minute = (minute + 60) - 45
} else {
    minute -= 45
}

if hour < 0 {
    hour += 24
}
print(hour, minute)