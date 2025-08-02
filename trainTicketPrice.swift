import Foundation

let childrenTicketPrice = 5.0
let adultTicketPrice = 10.0
let seniorTicketPrice = 7.0

print("Please enter your age:")

var age = 0  // Declare age at a higher scope

if let input = readLine() {
    age = Int(input) ?? 0
} else {
    print("Invalid input. Please enter a valid age.")
}

if age < 12 {
    print("Your ticket is \(childrenTicketPrice) dollars.")
} else if age >= 12 && age < 60 {
    print("Your ticket is \(adultTicketPrice) dollars.")
} else if age >= 60 {
    print("Your ticket is \(seniorTicketPrice) dollars.")
} else {
    print("Invalid age input.")
}
