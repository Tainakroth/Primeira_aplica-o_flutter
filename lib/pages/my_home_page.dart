import 'package:flutter/material.dart';
import 'package:primeira_aplicacao_flutter/widget/AcoesCalculadora_widget.dart';
import 'package:primeira_aplicacao_flutter/widget/input_widget.dart';
import 'package:primeira_aplicacao_flutter/widget/resultadoCalculadora_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var valor1InputController = TextEditingController();
  var valor2InputController = TextEditingController();

  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputWidget(
            title: "valor1", 
            controller: valor1InputController,
            ),
           InputWidget(
            title: "valor2", 
            controller: valor2InputController,
            ),
          
        AcoesCalculadoraWidget(exibeSoma: exibeSoma, exibemultiplicacao: exibemultiplicacao, exibedivisao: exibedivisao, exibesubtracao: exibesubtracao),
            ResultadoCalculadoraWidget(resultado: resultado)
          ],
        ),
      ),
    );
  }
  

  void exibeSoma(){
    var valor1 = double.tryParse(valor1InputController.text) ?? 0;
    var valor2 = double.tryParse(valor1InputController.text) ?? 0;
    resultado =( valor1 + valor2).toString();

    setState(() {
    });
  }

  void exibemultiplicacao(){
    var valor1 = double.tryParse(valor1InputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;

    resultado = (valor1 * valor2).toString();

    setState(() {
    });
  }

  void exibedivisao(){
    var valor1 = double.tryParse(valor1InputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;

    resultado = (valor1/valor2).toString();

    setState(() {
    });

  }

  void exibesubtracao(){
    var valor1 = double.tryParse(valor1InputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;

    resultado = (valor1-valor2).toString();

    setState(() {
    });
  }
}

