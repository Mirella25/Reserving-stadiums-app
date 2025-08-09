import 'package:equatable/equatable.dart';

abstract class FacilitiesEvent extends Equatable {
  const FacilitiesEvent();

  @override
  List<Object> get props => [];
}

class LoadFacilitiesEvent extends FacilitiesEvent {
  final int stadiumId;

  const LoadFacilitiesEvent(this.stadiumId);

  @override
  List<Object> get props => [stadiumId];
}
