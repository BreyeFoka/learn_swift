import Foundation

struct Item {
    let name: String
    let price: Double
    let quantity: Int
}

struct Cart {
    let items: [Item]
    let discountThreshold: Double
    let discountPercentage: Double
    
    func calculateTotalCost() -> String {
        var cartTotal = 0.0
        var receipt = "Your Receipt\n============\n"
        
        // Calculate subtotal and build receipt
        for item in items {
            let itemTotal = item.price * Double(item.quantity)
            cartTotal += itemTotal
            receipt += "Item: \(item.name), Price: $\(String(format: "%.2f", item.price)), Quantity: \(item.quantity)\n"
        }
        
        receipt += "\nSubtotal: $\(String(format: "%.2f", cartTotal))"
        
        // Apply discount if eligible
        if cartTotal >= discountThreshold {
            let discountAmount = cartTotal * (discountPercentage / 100)
            let finalTotal = cartTotal - discountAmount
            receipt += "\nDiscount (\(Int(discountPercentage))%): -$\(String(format: "%.2f", discountAmount))"
            receipt += "\nFinal Total: $\(String(format: "%.2f", finalTotal))"
        } else {
            receipt += "\nNo discount applied"
            receipt += "\nFinal Total: $\(String(format: "%.2f", cartTotal))"
        }
        
        return receipt
    }
}

// Example usage
var items: [Item] = []
print("Enter number of items to purchase:")
guard let countStr = readLine(), let count = Int(countStr) else {
    print("Invalid input for count")
    exit(1)
}

for i in 1...count {
    print("\nItem \(i):")
    
    print("Enter item name:")
    guard let name = readLine() else {
        print("Invalid input for name")
        exit(1)
    }
    
    print("Enter item price:")
    guard let priceStr = readLine(), let price = Double(priceStr) else {
        print("Invalid input for price")
        exit(1)
    }
    
    if price < 0 {
        print("Price cannot be negative")
        exit(1)
    }
    
    print("Enter quantity:")
    guard let quantityStr = readLine(), let quantity = Int(quantityStr) else {
        print("Invalid input for quantity")
        exit(1)
    }
    
    if quantity <= 0 {
        print("Quantity must be positive")
        exit(1)
    }
    
    items.append(Item(name: name, price: price, quantity: quantity))
}

// Create cart with 10% discount on purchases over $2000
let cart = Cart(items: items, discountThreshold: 2000.0, discountPercentage: 10.0)
print("\n\(cart.calculateTotalCost())")
