import Foundation

print("Please enter the temperature in Celsius:")

if let input = readLine(), let temperature = Double(input) {
    if temperature < 10 {
        print("Wear a heavy jacket")
    } else if temperature >= 10 && temperature <= 20 {
        print("Wear a sweater")
    } else if temperature >= 21 && temperature <= 30 {
        print("Wear a t-shirt")
    } else if temperature > 30 {
        print("Stay cool and wear light clothes")
    }
} else {
    print("Invalid input. Please enter a valid temperature.")
}
