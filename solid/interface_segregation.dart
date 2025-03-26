/// Interface Segregation
/// Clients should not be forced to implment interfaces they don't use

// Bad Practice
abstract class IPayment {
  void payWithCard();
  void payWithBank();
}

class SoftwareDevA implements IPayment {
  void payWithCard() {
    // Pay with only card
  }
  // If developer a don't support or need pay with bank he will be forced to implment it
  void payWithBank() {}
}

class SoftwareDevB implements IPayment {
  void payWithBank() {
    // Pay with card
  }

  void payWithCard() {
    // Pay with bank
  }
}

// Best Practice
abstract class ICardPayment {
  void payWithCard();
}

abstract class IBankPayment {
  void payWithBank();
}

class SoftwareDevX implements ICardPayment {
  void payWithCard() {
    // Pay with only card without issues
  }
}

class SoftwareDevY implements IBankPayment, ICardPayment {
  void payWithBank() {
    // Pay with bank
  }
  void payWithCard() {
    // Pay with card
  }
}
