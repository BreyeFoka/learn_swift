import Foundation

print("Restaurant Bill Splitter")
print("========================")

print("Please enter the total bill amount (in EUR):")
var totalBill = 0.0

if let input = readLine(), let bill = Double(input) {
    if bill > 0 {
        totalBill = bill
    } else {
        print("Invalid input. Bill amount must be positive.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid amount.")
    exit(1)
}

print("Please enter the number of people:")
var numberOfPeople = 0

if let input = readLine(), let people = Int(input) {
    if people > 0 {
        numberOfPeople = people
    } else {
        print("Invalid input. Number of people must be positive.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid number.")
    exit(1)
}

let amountPerPerson = totalBill / Double(numberOfPeople)

print("\nBill Summary:")
print("=============")
print("Total bill: \(String(format: "%.2f", totalBill)) EUR")
print("Number of people: \(numberOfPeople)")
print("Amount per person: \(String(format: "%.2f", amountPerPerson)) EUR")
