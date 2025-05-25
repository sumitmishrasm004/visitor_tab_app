
// import 'package:flutter/material.dart';

// class AutocompleteWidget extends StatelessWidget {
//   final List<String> suggestions;
//   final String placeholder;
//   TextInputType keyboardType;
//   FormFieldValidator validator;
//   Function(String, TextEditingController)? onChange;
//   TextEditingController controller;
//   Widget? suffixIcon;
//   bool? statusOfVisible;
//   bool? autovalidateMode;
//   String? initialValue;
//   Color? color;

//   AutocompleteWidget(
//       {Key? key,
//       required this.suggestions,
//       required this.placeholder,
//       required this.keyboardType,
//       required this.validator,
//       required this.controller,
//       this.autovalidateMode,
//       this.statusOfVisible,
//       this.initialValue,
//       this.onChange,
//       this.suffixIcon,
//       this.color})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Autocomplete<String>(
//       optionsBuilder: (TextEditingValue textEditingValue) {
//         if (textEditingValue.text.isNotEmpty) {
//           return const Iterable<String>.empty();
//         }
//         return suggestions.where((String option) {
//           return option.isNotEmpty;
//         });
//       },
//       optionsViewBuilder: (BuildContext context,
//           AutocompleteOnSelected<String> onSelected, Iterable<String> options) {
//         return Align(
//           alignment: Alignment.topLeft,
//           child: Material(
//             elevation: 4.0,
//             child: ConstrainedBox(
//               constraints: BoxConstraints(
//                   minHeight: 20,
//                   maxHeight: 200,
//                   maxWidth: MediaQuery.of(context).size.width * 0.7),
//               child: ListView.builder(
//                 padding: const EdgeInsets.only(top: 5.0, bottom: 5),
//                 itemCount: options.length,
//                 shrinkWrap: true,
//                 itemBuilder: (BuildContext context, int index) {
//                   final String option = options.elementAt(index);
//                   return GestureDetector(
//                     onTap: () {
//                       if (onChange != null) {
//                         onChange!(option, TextEditingController(text: option));
//                       }
//                       onSelected(option);
//                     },
//                     child: ListTile(
//                       title: Text(option),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         );
//       },
//       fieldViewBuilder: (BuildContext context,
//           TextEditingController textEditingController,
//           FocusNode focusNode,
//           VoidCallback onFieldSubmitted) {
//         if (textEditingController.text.isEmpty) {
//           textEditingController.text = controller.text;
//         }
//         return TextFormField(
//           controller: textEditingController,
//           focusNode: focusNode,
//           onChanged: (value) {
//             if (onChange != null) onChange!(value, textEditingController);
//           },
//           initialValue: initialValue,
//           autovalidateMode: autovalidateMode == true
//               ? AutovalidateMode.onUserInteraction
//               : AutovalidateMode.disabled,
//           textInputAction: TextInputAction.next,
//           validator: validator,
//           keyboardType: keyboardType,
//           obscureText: statusOfVisible == true ? false : true,
//           style: const TextStyle(
//               color: AppColors.black,
//               fontSize: 14.0,
//               fontFamily: 'Lato',
//               fontWeight: FontWeight.w400),
//           decoration: InputDecoration(
//             suffixIconConstraints:
//                 BoxConstraints(maxHeight: 30.0, maxWidth: 30.0),
//             suffixIcon: suffixIcon,
//             contentPadding:
//                 new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//             border: OutlineInputBorder(
//               borderSide: const BorderSide(width: 0.5, color: AppColors.grey),
//               borderRadius: BorderRadius.circular(6),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderSide: const BorderSide(width: 0.5, color: AppColors.barRed),
//               borderRadius: BorderRadius.circular(6),
//             ),
//             focusedErrorBorder: OutlineInputBorder(
//               borderSide: const BorderSide(width: 0.5, color: AppColors.barRed),
//               borderRadius: BorderRadius.circular(6),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(width: 1.0, color: AppColors.grey),
//               borderRadius: BorderRadius.circular(6),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(width: 1.0, color: AppColors.grey),
//               borderRadius: BorderRadius.circular(6),
//             ),
//             hintText: placeholder,
//             hintStyle: const TextStyle(
//                 fontFamily: 'Lato',
//                 fontSize: 14.0,
//                 fontWeight: FontWeight.w400,
//                 color: AppColors.grey8),
//           ),
//           onFieldSubmitted: (str) => onFieldSubmitted(),
//         );
//       },
//       onSelected: (String selection) {
//         debugPrint('You just selected $selection');
//       },
//     );
//   }
// }
