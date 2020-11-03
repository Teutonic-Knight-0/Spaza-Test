part of 'denomination_cubit.dart';

abstract class DenominationState extends Equatable {
  final List<String> calculatedDenominations;
  const DenominationState([this.calculatedDenominations]);
  @override
  List<Object> get props => [this.calculatedDenominations];
}

class DenominationInitial extends DenominationState {}

class DenominationError extends DenominationState {}

class DenominationsLoaded extends DenominationState {
  final List<String> loadedDenominations;
  DenominationsLoaded(this.loadedDenominations) : super(loadedDenominations);
}
