// import 'package:chopper_demo/Features/GenderPrediction/Blocs/cubit/gender_prediction_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:bloc/bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class GenderPredictionViewPage extends StatefulWidget {
//   const GenderPredictionViewPage({super.key});

//   @override
//   State<GenderPredictionViewPage> createState() =>
//       _GenderPredictionViewPageState();
// }

// class _GenderPredictionViewPageState extends State<GenderPredictionViewPage> {
//   late TextEditingController controller;
//   @override
//   void initState() {
//     super.initState();
//     controller = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<GenderPredictionCubit, GenderPredictionState>(
//         builder: (context, state) {
//           if (state is GenderPredictionFailed) {
//             return Center(child: Text(state.message));
//           } else {
//             return Stack(
//               children: [
//                 _getBody(context, state),
//                 Visibility(
//                   visible: state == GenderPredictionLoading(),
//                   child: const CircularProgressIndicator(),
//                 )
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }

//   Column _getBody(BuildContext context, GenderPredictionState state) {
//     return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       const Text("Enter your name"),
//       const SizedBox(
//         height: 10,
//       ),
//       TextFormField(
//         controller: controller,
//         decoration: const InputDecoration(hintText: "Enter name"),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       state is GenderPredictionLoaded
//           ? Text("Predicted gender: ${(state).genderPrediction?.gender}")
//           : SizedBox(),
//       ElevatedButton(
//           onPressed: () {
//             BlocProvider.of<GenderPredictionCubit>(context)
//                 .getPrediction(controller.text);
//           },
//           child: const Text("Predict"))
//     ]);
//   }
// }
