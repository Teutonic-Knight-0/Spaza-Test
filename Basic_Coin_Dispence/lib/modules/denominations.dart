class Denominations {
  List<String> totalDenominations = List<String>();

  double _deductRandDenominations(double totalAmount, double denomination) {
    var amountOf = totalAmount ~/ denomination.toInt();
    totalDenominations.add('$amountOf x R$denomination');
    return totalAmount - (denomination * amountOf);
  }

  double _deductCentDenominations(double totalAmount, double denomination) {
    var amountOf = totalAmount ~/ denomination;
    totalDenominations.add('$amountOf x $denomination c');
    var t = totalAmount - (denomination * amountOf);
    return double.parse((t).toStringAsFixed(2));
  }

  void calculateDenominations(double totalAmount) {
    if (totalAmount >= 200) {
      calculateDenominations(_deductRandDenominations(totalAmount, 200));
    } else if (totalAmount >= 100) {
      calculateDenominations(_deductRandDenominations(totalAmount, 100));
    } else if (totalAmount >= 50) {
      calculateDenominations(_deductRandDenominations(totalAmount, 50));
    } else if (totalAmount >= 20) {
      calculateDenominations(_deductRandDenominations(totalAmount, 20));
    } else if (totalAmount >= 10) {
      calculateDenominations(_deductRandDenominations(totalAmount, 10));
    } else if (totalAmount >= 5) {
      calculateDenominations(_deductRandDenominations(totalAmount, 5));
    } else if (totalAmount >= 2) {
      calculateDenominations(_deductRandDenominations(totalAmount, 2));
    } else if (totalAmount >= 1) {
      calculateDenominations(_deductRandDenominations(totalAmount, 1));
    } else if (totalAmount >= 0.5) {
      calculateDenominations(_deductCentDenominations(totalAmount, 0.5));
    } else if (totalAmount >= 0.2) {
      calculateDenominations(_deductCentDenominations(totalAmount, 0.2));
    } else if (totalAmount >= 0.1) {
      calculateDenominations(_deductCentDenominations(totalAmount, 0.1));
    } else if (totalAmount >= 0.05) {
      calculateDenominations(_deductCentDenominations(totalAmount, 0.05));
    } else if (totalAmount >= 0.02) {
      calculateDenominations(_deductCentDenominations(totalAmount, 0.02));
    } else if (totalAmount >= 0.01) {
      calculateDenominations(_deductCentDenominations(totalAmount, 0.01));
    } else if (totalAmount == 0) {
    } else if (totalAmount < 0.01) {
      throw Exception('Invalid currency value entered');
    }
  }
}
