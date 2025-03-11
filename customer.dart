// Applying effective dart & Best practices
class Customer {
  /// Customer is a class represents a real world custom
  /// it has Customer's [customerFristName] , [customerLastName] and [customerAddress]
  /// it has some functions to get and set [Customer] data
  /// it has a function to get [Customer] id from api Response

  String customerFristName, customerLastName, customerAddress;
  Customer({
    required this.customerFristName,
    required this.customerLastName,
    required this.customerAddress,
  });

  // Getters

  /// get customer frist name
  String get fristName => customerFristName;

  /// get customer last name
  String get lastName => customerLastName;

  /// get customer address
  String get address => customerAddress;

  // Setters

  /// set customer frist name
  set fristName(String fristName) => this.customerFristName = fristName;

  /// set customer last name
  set lastName(String lastName) => this.customerLastName = lastName;

  /// set customer Address
  set address(String address) => this.customerAddress = address;

  /// display customer full name
  void displayCsutomerFullName() => print("$customerFristName $customerLastName");

  /// get customer id from backend
  int getCusomerId() => 0;
}
