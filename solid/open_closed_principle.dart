/// Open-Closed Principle
/// An entity should be open for extension but closed for modification

// Bad Practice
class Cars {
  void carDisplayPlateNumber() {
    // Some code
  }
  void truckDisplayPlateNumber() {
    // Some code
  }

  /// This class has display plate number methods, if any changes
  /// are made to the way of displaying the plate number
  /// we will most need to change all the functions
}

// Best Practice
abstract class Vehicle {
  void displayPlateNumber();
  void displayManufacturer() => print('Manufacturer: Toyota');
}

class Car extends Vehicle {
  @override
  void displayPlateNumber() => print('B20023');
}

class Truck extends Vehicle {
  @override
  void displayPlateNumber() => print('A100223');
}

/// In this way we can create a new type of vehicle with new function without affecting the old code
/// And if any changes would happen to the Truck or Car in the future, it will not affect the old code also
