// Function to calculate the total price of items with optional tax
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double total = prices.fold(0.0, (sum, price) => sum + price); // Sum of all item prices
  double taxAmount = total * taxRate; // Calculate tax
  return total + taxAmount; // Return total with tax
}

void main() {
  // Sample list of item prices
  List<double> prices = [5.99, 15.49, 3.75, 29.99, 8.49];

  // Calculate total without tax
  print('Total without tax: \$${calculateTotal(prices)}');

  // Calculate total with a 5% tax
  print('Total with 5% tax: \$${calculateTotal(prices, taxRate: 0.05)}');

  // Anonymous function to filter out items under $10
  List<double> filteredPrices = prices.where((price) => price >= 10).toList();
  print('Items \$10 and above: $filteredPrices'); // Escape $ to display literal $

  // Higher-order function to apply discount
  double applyDiscount(List<double> prices, double Function(double) discountFunction) {
    return prices.map(discountFunction).toList().reduce((a, b) => a + b);
  }

  // Discount function that applies a percentage discount
  double discountFunction(double price) => price * 0.90; // 10% discount

  // Apply discount and calculate total
  double discountedTotal = applyDiscount(prices, discountFunction);
  print('Total after 10% discount: \$${calculateTotal(prices, taxRate: 0.05)}');

  // Recursive function to calculate factorial discount
  double calculateFactorialDiscount(int n) {
    if (n <= 1) {
      return 1.0; // Base case: factorial of 1 is 1
    } else {
      return n * calculateFactorialDiscount(n - 1); // Recursive case
    }
  }

  // Calculate factorial of the number of items (length of the cart)
  int numberOfItems = prices.length;
  double factorialDiscount = calculateFactorialDiscount(numberOfItems) / 100.0; // Convert to percentage
  
  // Apply factorial discount
  double finalPriceWithFactorialDiscount = discountedTotal * (1 - factorialDiscount);
  print('Total after factorial discount (${numberOfItems}!): \$${finalPriceWithFactorialDiscount.toStringAsFixed(2)}');
}
