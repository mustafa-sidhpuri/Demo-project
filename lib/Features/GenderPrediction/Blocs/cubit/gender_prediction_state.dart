part of 'gender_prediction_cubit.dart';

@immutable
abstract class GenderPredictionState {}

class GenderPredictionInitial extends GenderPredictionState {}

class GenderPredictionLoading extends GenderPredictionState {}

class GenderPredictionLoaded extends GenderPredictionState {
  final GenderPredictionResponseModel? genderPrediction;
  GenderPredictionLoaded(this.genderPrediction);
}

class GenderPredictionFailed extends GenderPredictionState {
  final String message;
  GenderPredictionFailed({this.message = "Some error occured"});
}
