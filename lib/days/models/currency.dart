import 'package:intl/intl.dart';

String formatCurrency (double amount) {
  final NumberFormat currencyFormatter = NumberFormat.currency(
    symbol: '\$',
    decimalDigits: 4
  );
  return currencyFormatter.format(amount);
}