import Foundation
print("Please enter your password:")

if let password = readLine(){
    let hasNumbers = password.rangeOfCharacter(from: .decimalDigits) != nil
    let hasLetters = password.rangeOfCharacter(from: .letters) != nil
    if password.count < 6  {
        print("Weak Password.")
    }
    else if password.count <= 10 && password.count >= 6 && hasNumbers {
        print("Moderate Password.")
    } else if password.count > 10 && hasNumbers && hasLetters 
    {
        print("Strong Password.")
    }
    else {
        print("Invalid Password.")
    }

}