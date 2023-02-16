// import 'package:bloc/bloc.dart';
// import 'package:chopper/chopper.dart';
// import 'package:chopper_demo/Features/GenderPrediction/Models/GenderPredictionResponseModel.dart';
// import 'package:chopper_demo/core/Network/DataHandlers/GenderPredictionService.dart';
// import 'package:chopper_demo/core/Network/Utils/JsonToTypeConverter.dart';
// import 'package:meta/meta.dart';

// part 'gender_prediction_state.dart';

// class GenderPredictionCubit extends Cubit<GenderPredictionState> {
//   GenderPredictionCubit() : super(GenderPredictionInitial());

//   Future<void> getPrediction(String name) async {
//     // try {
//     emit(GenderPredictionLoading());
//     final Response<GenderPredictionResponseModel> prediction =
//         await getClient.getGenderPrediction(name);
//     if (prediction.isSuccessful) {
//       emit(GenderPredictionLoaded(prediction.body));
//     } else {
//       emit(GenderPredictionFailed(
//           message: "after success ${prediction.error.toString()}"));
//     }
//     // }
//     // catch (err) {
//     //   emit(GenderPredictionFailed(message: err.toString()));
//     // }
//   }

//   GenderPredictionService get getClient {
//     return GenderPredictionService.create();
//   }
// }
