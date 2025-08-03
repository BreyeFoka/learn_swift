import Foundation

print("Please enter the movie time (hour in 24-hour format, e.g., 14 for 2 PM):")

if let input = readLine(), let hour = Int(input) {
    if hour >= 0 && hour <= 23 {
        if hour >= 6 && hour < 12 {
            print("Morning ticket price: 6 EUR")
        } else if hour >= 12 && hour < 18 {
            print("Afternoon ticket price: 8 EUR")
        } else if hour >= 18 && hour <= 23 {
            print("Evening ticket price: 10 EUR")
        } else {
            print("Sorry, no movies are shown between midnight and 6 AM.")
        }
    } else {
        print("Invalid hour. Please enter a valid hour (0-23).")
    }
} else {
    print("Invalid input. Please enter a valid hour.")
}
