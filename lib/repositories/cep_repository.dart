import 'dart:convert';

import 'package:bechannel/models/cep_model.dart';
import 'package:http/http.dart' as http;

Future<CepModel> requestCep(String cep) async {
  

  final response = await http.get(
    Uri.parse('https://viacep.com.br/ws/$cep/json'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    
  );
  print(response.body);

  if (response.statusCode == 200) {
    return CepModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Erro ao buscar endereço');
  }
}
