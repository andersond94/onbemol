import 'dart:convert';

import 'package:bechannel/models/cep_model.dart';
import 'package:http/http.dart' as http;

Future<CepModel> doLogin(String email, String password) async {
  final int numCep = 0;

  final response = await http.post(
    Uri.parse('https://viacep.com.br/ws/69059198/json'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{"email": email, "password": password}),
  );
  print(response.body);

  if (response.statusCode == 200) {
    return CepModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Erro ao buscar endereço');
  }
}
