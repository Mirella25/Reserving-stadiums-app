import 'package:equatable/equatable.dart';
import '../../../../domain/entities/player/facility_entity.dart';
abstract class FacilitiesState extends Equatable {
  const FacilitiesState();

  @override
  List<Object?> get props => [];
}

class FacilitiesInitial extends FacilitiesState {}

class FacilitiesLoading extends FacilitiesState {}

class FacilitiesLoaded extends FacilitiesState {
  final List<FacilityEntity> facilities;

  const FacilitiesLoaded(this.facilities);

  @override
  List<Object?> get props => [facilities];
}

class FacilitiesError extends FacilitiesState {
  final String message;

  const FacilitiesError(this.message);

  @override
  List<Object?> get props => [message];
}



