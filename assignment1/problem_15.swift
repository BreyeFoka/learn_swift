import Foundation

print("BMI (Body Mass Index) Calculator")
print("================================")

print("Please enter your weight in kilograms:")
var weight = 0.0

if let input = readLine(), let weightInput = Double(input) {
    if weightInput > 0 {
        weight = weightInput
    } else {
        print("Invalid input. Weight must be positive.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid weight.")
    exit(1)
}

print("Please enter your height in meters:")
var height = 0.0

if let input = readLine(), let heightInput = Double(input) {
    if heightInput > 0 {
        height = heightInput
    } else {
        print("Invalid input. Height must be positive.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid height.")
    exit(1)
}

let bmi = weight / (height * height)

print("\nBMI Results:")
print("============")
print("Weight: \(String(format: "%.2f", weight)) kg")
print("Height: \(String(format: "%.2f", height)) m")
print("BMI: \(String(format: "%.2f", bmi))")

if bmi < 18.5 {
    print("Category: Underweight")
} else if bmi < 25.0 {
    print("Category: Normal")
} else if bmi < 30.0 {
    print("Category: Overweight")
} else {
    print("Category: Obese")
}
