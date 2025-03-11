import 'customer.dart';

void main() {
  Customer customer = new Customer(
    customerFristName: 'Mostafa',
    customerLastName: 'Hamed',
    customerAddress: 'Cairo',
  );
  customer.displayCsutomerFullName();
}
