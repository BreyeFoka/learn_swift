import Foundation

var totalSteps = 0
var day = 1

print("Please enter the number of steps for each day of the week:")

while day <= 7 {
    print("Day \(day) steps:")
    if let input = readLine(), let steps = Int(input) {
        if steps >= 0 {
            totalSteps += steps
            day += 1
        } else {
            print("Invalid input. Please enter a positive number.")
        }
    } else {
        print("Invalid input. Please enter a valid number.")
    }
}

print("Total steps for the week: \(totalSteps)")

if totalSteps >= 70000 {
    print("Great job!")
} else if totalSteps >= 50000 {
    print("Good effort!")
} else {
    print("Try to walk more next week.")
}
