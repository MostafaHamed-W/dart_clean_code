/// Single responsibility principle
/// A class should has just one responsibility, and also has 1 reason to change

// Bad Practice
class Gear {
  // This class is responsible for changing the gear and accelerating
  void changeGear() {
    // Some code
  }
  void accelerate() {
    // Some code
  }

  /// This class has two unrelated functions, if any changes
  /// are made to any of them in the future, the class will change
  /// possing a sigmificant risk to the entire system
}

// Best Practice
class GearShift {
  // This class is responsible for changing the gear
  void changeGear() {
    // Some code
  }
}

class GasPedal {
  // This class is responsible for accelerating
  void accelerate() {
    // Some code
  }
}
