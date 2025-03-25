/// Liskov substitution principle
/// objects of a superclass should be able to be replaced with objects of a subclass without affecting the correctness of the program

// Bad Practice
abstract class Car {
  void speed(int meters) {}
  void refuel(int liters) {}
}

class ElectricCar implements Car {
  @override
  void refuel(int liters) {}
  @override
  void speed(int meters) {}

  /// This violates the principle because we cannot replace super class with sub without breaking correctness
}

// Best Practice
class Vehicle {
  void speed(int meters) {}
}

class ElectricVechile implements Vehicle {
  @override
  void speed(int meters) {}
  void refuel(int watts) {}
}

class GasVeichle implements Vehicle {
  @override
  void speed(int meters) {}
  void refuel(int litres) {}
}

/// This don't violate the principle as it doesn't affect the functionality and we can replace
/// For example we can make a List<Vehicle> and pass to it ElectricVechile and GasVeichle
List<Vehicle> vehicles = [ElectricVechile(), GasVeichle()];
