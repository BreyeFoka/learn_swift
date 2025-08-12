import Foundation

var evenCount = 0
var oddCount = 0
var numbersEntered = 0

print("Please enter 10 numbers:")

while numbersEntered < 10 {
    print("Enter number \(numbersEntered + 1):")
    
    if let input = readLine(), let number = Int(input) {
        if number % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
        numbersEntered += 1
    } else {
        print("Invalid input. Please enter a valid number.")
    }
}

print("Results:")
print("Even numbers: \(evenCount)")
print("Odd numbers: \(oddCount)")
print("Total numbers: \(evenCount + oddCount)")
