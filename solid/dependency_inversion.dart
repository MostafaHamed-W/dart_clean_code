/// Dependency Inversion
/// High-level modules should not depend on low-level modules, both should depend on abstraction

// Best Practice
// An interface for our DB operations
abstract class DatabaseInterface {
  void get();
  void insert();
  void update();
  void delete();
}

class SQLiteDatabase implements DatabaseInterface {
  void get() {}
  void insert() {}
  void update() {}
  void delete() {}
}

class PostgreDatabase implements DatabaseInterface {
  void get() {}
  void insert() {}
  void update() {}
  void delete() {}
}

// Payment report class depends on interface not low level db module, we can change db anytime
class PaymentReport {
  // Depend on abstraction
  late DatabaseInterface _database;
  PaymentReport(DatabaseInterface database) {
    this._database = database;
  }

  void open() => this._database.get();
  void save() => this._database.insert();
}

void main() {
  // Using SQLite DB
  SQLiteDatabase sqlDB = new SQLiteDatabase();
  PaymentReport sqlDBReport = new PaymentReport(sqlDB);
  sqlDBReport.open();
  // Using PostGre DB
  PostgreDatabase postGreDB = new PostgreDatabase();
  PaymentReport postGreReport = new PaymentReport(postGreDB);
  postGreReport.open();
}

// Bad Practice
class PaymentReportX {
  // Depend on specific low module not abstarct
  late SQLiteDatabase _database;
  PaymentReport(SQLiteDatabase database) {
    this._database = database;
  }

  void open() => this._database.get();
  void save() => this._database.insert();
}
