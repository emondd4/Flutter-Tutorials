import 'package:hive/hive.dart';

import 'TransactionModel.dart';

class Boxes {
  static Box<Transaction> getTransactions() =>
      Hive.box<Transaction>('transactions');
}
