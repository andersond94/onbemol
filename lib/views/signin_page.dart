// import 'package:bechannel/components/customTexFieldCep.dart';
// import 'package:bechannel/components/customTextField.dart';
// import 'package:bechannel/models/cep_model.dart';
// import 'package:bechannel/utils/theme_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// class StepperForm extends StatefulWidget {
//   StepperForm({key}) : super(key: key);

//   @override
//   _StepperFormState createState() => _StepperFormState();
// }
//   String _cidade = '';
//   String _bairro = '';
//   String _rua = '';
//   String _estado = '';


  
// class _StepperFormState extends State<StepperForm> {
//   int _currentStep = 0;
//   String _labelNext = 'Próximo';
//   String _labelCancel = 'cancelar';
// void _completAdress() {
//     setState(() {
//        _cidade = 'mauzainho';
//           _bairro = 'mauzainbairro';
//           _estado = '';
//           _rua = '';
//     });
//   }
//   var restcep = CepModel;
//   Future<CepModel> cepRes;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
//         child: Column(
//           children: [
//             Expanded(
//                 child: Stepper(
//               controlsBuilder: (BuildContext context,
//                   {onStepContinue, onStepCancel}) {
//                 return Row(
//                   children: <Widget>[
//                     TextButton(
//                       onPressed: onStepContinue,
//                       child: Text(
//                         _labelNext,
//                         style: TextStyle(color: primaryColor),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     TextButton(
//                       onPressed: onStepCancel,
//                       child: Text(
//                         _labelCancel,
//                         style: TextStyle(color: thirdyColor),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//               currentStep: _currentStep,
//               onStepContinue: () {
//                 if (_currentStep >= 2) return;
//                 setState(() {
//                   _currentStep += 1;
//                   _completAdress();
//                 });
//               },
//               onStepCancel: () {
//                 if (_currentStep <= 0) return;
//                 setState(() {
//                   _currentStep -= 1;
//                 });
//               },
//               steps: <Step>[
//                 Step(
//                   title: Text('Dados de acesso'),
//                   content: SizedBox(
//                     child: formAccess(),
//                     width: 320.0,
//                     height: 350.0,
//                   ),
//                 ),
//                 Step(
//                   title: Text('Endereço'),
//                   content: SizedBox(
//                     child: formAddress(),
//                     width: 320.0,
//                     height: 380.0,
//                   ),
//                 ),
//                 Step(
//                   title: Text('Concluir cadastro'),
//                   content: SizedBox(
//                     child: formDone(),
//                     width: 320.0,
//                     height: 250.0,
//                   ),
//                 ),
//               ],
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget formAccess() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       TextFieldNeu(
//         isPassword: false,
//         label: "Primeiro Nome",
//         hint: "",
//         onChanged: (firstName) {},
//       ),
//       TextFieldNeu(
//         isPassword: false,
//         label: "E-mail",
//         hint: "",
//         onChanged: (firstName) {},
//       ),
//       TextFieldNeu(
//         isPassword: false,
//         label: "senha",
//         hint: "",
//         onChanged: (firstName) {},
//       ),
//     ],
//   );
// }

// Widget formAddress() {
  
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       TextFieldCep(
//         isPassword: false,
//         label: "CEP",
//         hint: "",
//         onChanged: (firstName) { 
         
//         },
      
//       ),
//       TextButton(onPressed: () => {}, child: Text('Buscar CEP')),
//       SizedBox(height: 50,),
//       TextFieldNeu(
//         isPassword: false,
//         label: "Cidade - UF",
//         hint: _cidade,
//         onChanged: (firstName) {},
//       ),
//       TextFieldNeu(
//         isPassword: false,
//         label: "Bairro",
//         hint: _bairro,
//         onChanged: (firstName) {},
//       ),
//       TextFieldNeu(
//         isPassword: false,
//         label: "Rua",
//         hint: _rua,
//         onChanged: (firstName) {},
//       ),
      
//     ],
//   );
// }

// Widget formDone() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         'Protinho! Se estiver tudo certo, basta finalizar o cadastro e ralizar seu login :)',
//         style: TextStyle(color: thirdyColor),
//         textAlign: TextAlign.center,
//       )
//     ],
//   );
// }




