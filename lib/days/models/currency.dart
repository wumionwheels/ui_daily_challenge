import 'package:intl/intl.dart';

String formatCurrency (double amount) {
  final NumberFormat currencyFormatter = NumberFormat.currency(
    symbol: '\$',
    decimalDigits: 2
  );
  return currencyFormatter.format(amount);
}