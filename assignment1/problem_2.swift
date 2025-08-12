import Foundation

var items = 0
var totalPrice: Double = 0
var discountPrice: Double = 0
let discount = 15.0

while items < 3 {
    print("Please enter the price of item \(items + 1):")
    if let input = readLine(), let price = Double(input) {
        totalPrice += price
        items += 1
    } else {
        print("Invalid input. Please enter a valid number.")
    }
}

if totalPrice > 100 {
    discountPrice = totalPrice - (totalPrice * discount / 100)
} else {
    discountPrice = totalPrice
}

print("Thank you for shopping with us!")
print("The total price before discount is: \(totalPrice)")
print("The total price after discount is: \(discountPrice)")
print("The discount applied is: \(totalPrice - discountPrice)")