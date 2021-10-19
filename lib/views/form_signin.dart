import 'package:bechannel/models/cep_model.dart';
import 'package:bechannel/repositories/cep_repository.dart';
import 'package:flutter/material.dart';

class FormSignin extends StatefulWidget {
  FormSignin({key}) : super(key: key);

  @override
  _FormSigninState createState() => _FormSigninState();
}

class _FormSigninState extends State<FormSignin> {
  String _cep;
  String _estado;
  String _cidade;
  String _bairro;
  String _rua;
  final Map<String, String> _formData = {};
 

  void _completAdress() {
    setState(() {
      requestCep(_myController.text);
    });
  }

  final _myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cadastro')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                maxLength: 8,
                onFieldSubmitted: (context) => _completAdress(),
                controller: _myController,
                decoration: InputDecoration(
                  
                  labelText: 'Insira o CEP',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(onPressed: _completAdress, child: Text('Buscar')),
            SizedBox(
              height: 10,
            ),
            FutureBuilder<CepModel>(
              future: requestCep(_myController.text),
              builder: (context, snapshot) {
                return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: !snapshot.hasData
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                // enabled: false,
                                decoration: InputDecoration(
                                  labelText: 'Estado',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: 'Cidade',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: 'Bairro',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              
                              TextFormField(
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: 'Rua',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                // enabled: false,
                                initialValue: snapshot.data.uf,
                                decoration: InputDecoration(
                                  labelText: 'Estado',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                enabled: false,
                                initialValue: snapshot.data.localidade,
                                decoration: InputDecoration(
                                  labelText: 'Cidade',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                initialValue: snapshot.data.bairro,
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: 'Bairro',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                initialValue: snapshot.data.logradouro,
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: 'Rua',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ));
              },
            )
          ],
        ),
      ),
    );
  }
}
