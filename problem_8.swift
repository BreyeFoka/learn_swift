import Foundation

let secretNumber = Int.random(in: 1...20)
var isCorrect = false
var attempts = 0

print("Welcome to the Number Guessing Game!")
print("I'm thinking of a number between 1 and 20.")
print("Can you guess what it is?")

while !isCorrect {
    print("Enter your guess:")
    
    if let input = readLine(), let guess = Int(input) {
        attempts += 1
        
        if guess == secretNumber {
            isCorrect = true
            print("Congratulations! You've guessed the secret number \(secretNumber)!")
            print("It took you \(attempts) attempts.")
        } else if guess < secretNumber {
            print("Too low! Try again.")
        } else {
            print("Too high! Try again.")
        }
    } else {
        print("Invalid input. Please enter a number between 1 and 20.")
    }
}
