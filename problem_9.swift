import Foundation

print("Please enter a number (1-12) to generate its multiplication table:")

if let input = readLine(), let number = Int(input) {
    if number >= 1 && number <= 12 {
        print("Multiplication table for \(number):")
        print("========================")
        
        for i in 1...12 {
            let result = number * i
            print("\(number) × \(i) = \(result)")
        }
    } else {
        print("Invalid input. Please enter a number between 1 and 12.")
    }
} else {
    print("Invalid input. Please enter a valid number.")
}
