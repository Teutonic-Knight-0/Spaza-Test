import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_counter/modules/denominations.dart';

part 'denomination_state.dart';

class DenominationCubit extends Cubit<DenominationState> {
  final Denominations dmns;
  DenominationCubit(this.dmns) : super(DenominationInitial());

  void getDenominations(double amount) {
    try {
      dmns.calculateDenominations(amount);
      emit(DenominationsLoaded(dmns.totalDenominations));
    } catch (e) {
      print(e);
      emit(DenominationError());
    }
  }

  void resetDenominations() {
    try {
      dmns.totalDenominations = List<String>();
      emit(DenominationInitial());
    } catch (e) {
      print(e);
      emit(DenominationError());
    }
  }
}
