import Foundation

let randomNumber = Int.random(in: 1...100)

var guess: Int = Int(readLine() ?? "") ?? 0

var isCorrect = false
var attempts = 0

while !isCorrect {
    if guess == randomNumber {
        isCorrect = true
        print("Congratulations! You've guessed the number.")
    } else if guess < randomNumber {
        print("Too low! Try again.")
    } else {
        print("Too high! Try again.")
    }
    attempts += 1
    guess = Int(readLine() ?? "") ?? 0
}

print("It took you \(attempts) attempts to guess the number.")