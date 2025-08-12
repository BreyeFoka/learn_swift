import Foundation

print("Please enter the number of kilometers driven:")
var kilometers = 0.0

if let input = readLine(), let km = Double(input) {
    if km > 0 {
        kilometers = km
    } else {
        print("Invalid input. Kilometers must be positive.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid number.")
    exit(1)
}

print("Please enter the number of liters of fuel used:")
var liters = 0.0

if let input = readLine(), let fuel = Double(input) {
    if fuel > 0 {
        liters = fuel
    } else {
        print("Invalid input. Liters must be positive.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid number.")
    exit(1)
}

let efficiency = kilometers / liters

print("Fuel efficiency: \(String(format: "%.2f", efficiency)) km/liter")

if efficiency >= 20 {
    print("High efficiency")
} else if efficiency >= 10 {
    print("Average efficiency")
} else {
    print("Low efficiency")
}
