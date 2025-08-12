import Foundation

print("Simple Interest Calculator")
print("==========================")

print("Please enter the principal amount (in EUR):")
var principal = 0.0

if let input = readLine(), let amount = Double(input) {
    if amount > 0 {
        principal = amount
    } else {
        print("Invalid input. Principal must be positive.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid amount.")
    exit(1)
}

print("Please enter the interest rate (%):")
var rate = 0.0

if let input = readLine(), let interestRate = Double(input) {
    if interestRate >= 0 {
        rate = interestRate
    } else {
        print("Invalid input. Rate cannot be negative.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid rate.")
    exit(1)
}

print("Please enter the time period (in years):")
var time = 0.0

if let input = readLine(), let timePeriod = Double(input) {
    if timePeriod > 0 {
        time = timePeriod
    } else {
        print("Invalid input. Time must be positive.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid time period.")
    exit(1)
}

let interest = (principal * rate * time) / 100
let totalAmount = principal + interest

print("\nCalculation Results:")
print("====================")
print("Principal: \(String(format: "%.2f", principal)) EUR")
print("Rate: \(String(format: "%.2f", rate))%")
print("Time: \(String(format: "%.2f", time)) years")
print("Interest: \(String(format: "%.2f", interest)) EUR")
print("Total amount to repay: \(String(format: "%.2f", totalAmount)) EUR")
