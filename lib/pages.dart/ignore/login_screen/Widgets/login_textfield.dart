
// part of '../LoginScreen.dart';
// class LoginTextField extends StatelessWidget {
//   const LoginTextField({
//     super.key,
//     required this.phoneNumberController,
//   });

//   final TextEditingController phoneNumberController;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
        
//           const Align(
//               alignment: Alignment.topRight,
//               child: Text(
//                 'شماره تلفن همراه',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               )),
//         TextField(
//           controller: phoneNumberController,
//           keyboardType: TextInputType.number,
//           textAlign: TextAlign.right,
//           decoration: InputDecoration(
//             suffixIcon: Icon(
//               Icons.person_outlined,
//               color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
//             ),
//             hintText: "مثلاً 9024365997",
//             hintStyle: TextStyle(
//               color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
//               fontSize: 14,
//               fontStyle: FontStyle.italic,
//             ),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
