import Foundation

print("Please enter your test score (0-100):")

if let input = readLine(), let score = Int(input) {
    if score >= 0 && score <= 100 {
        if score >= 90 {
            print("Excellent")
        } else if score >= 75 {
            print("Good")
        } else if score >= 50 {
            print("Fair")
        } else {
            print("Fail")
        }
    } else {
        print("Invalid score. Please enter a score between 0 and 100.")
    }
} else {
    print("Invalid input. Please enter a valid number.")
}
