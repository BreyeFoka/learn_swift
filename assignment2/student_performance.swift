import Foundation

struct Student {
    let name: String
    let scores: [Int]
    let passingThreshold: Int
    
    func generatePerformanceReport() -> String {
        // Calculate average score
        let sum = scores.reduce(0, +)
        let averageScore = Double(sum) / Double(scores.count)
        
        // Determine status
        let status = averageScore >= Double(passingThreshold) ? "Passed" : "Failed"
        
        // Determine letter grade
        let letterGrade: String
        switch averageScore {
        case 90...100:
            letterGrade = "A"
        case 80..<90:
            letterGrade = "B"
        case 70..<80:
            letterGrade = "C"
        case 60..<70:
            letterGrade = "D"
        default:
            letterGrade = "F"
        }
        
        // Generate report
        var report = """
        Student Performance Report
        ========================
        Name: \(name)
        Scores: \(scores)
        Average Score: \(String(format: "%.1f", averageScore))
        Status: \(status)
        Final Grade: \(letterGrade)
        """
        
        return report
    }
}

// Example usage
print("Enter student name:")
guard let name = readLine() else {
    print("Invalid input for name")
    exit(1)
}

var scores: [Int] = []
print("Enter number of test scores:")
guard let countStr = readLine(), let count = Int(countStr) else {
    print("Invalid input for count")
    exit(1)
}

for i in 1...count {
    print("Enter score \(i):")
    if let scoreStr = readLine(), let score = Int(scoreStr) {
        if score >= 0 && score <= 100 {
            scores.append(score)
        } else {
            print("Score must be between 0 and 100")
            exit(1)
        }
    } else {
        print("Invalid input for score")
        exit(1)
    }
}

print("Enter passing threshold (0-100):")
guard let thresholdStr = readLine(), let threshold = Int(thresholdStr) else {
    print("Invalid input for threshold")
    exit(1)
}

if threshold < 0 || threshold > 100 {
    print("Threshold must be between 0 and 100")
    exit(1)
}

let student = Student(name: name, scores: scores, passingThreshold: threshold)
print("\n\(student.generatePerformanceReport())")
