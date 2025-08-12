import Foundation

print("Please enter the employee's years of service:")
var yearsOfService = 0

if let input = readLine(), let years = Int(input) {
    if years >= 0 {
        yearsOfService = years
    } else {
        print("Invalid input. Years of service cannot be negative.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid number.")
    exit(1)
}

print("Please enter the employee's performance rating (1-5):")
var rating = 0

if let input = readLine(), let performanceRating = Int(input) {
    if performanceRating >= 1 && performanceRating <= 5 {
        rating = performanceRating
    } else {
        print("Invalid input. Rating must be between 1 and 5.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid rating.")
    exit(1)
}

var bonus = 0

if yearsOfService >= 5 && rating >= 4 {
    bonus = 1000
} else if yearsOfService >= 5 && rating < 4 {
    bonus = 500
} else {
    bonus = 200
}

print("Employee bonus: \(bonus) EUR")
