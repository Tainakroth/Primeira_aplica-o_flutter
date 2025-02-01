import 'package:flutter/material.dart';

class ResultadoCalculadoraWidget extends StatelessWidget{
  final String resultado;

  const ResultadoCalculadoraWidget({super.key, required this.resultado});
  
  @override
  Widget build(BuildContext context) {
   return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("Resultado: "),
              Container(
                padding: EdgeInsetsDirectional.symmetric(horizontal:8,vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  resultado,
                  style:TextStyle(fontStyle: FontStyle.italic,fontSize:15),
                ),
              )
          ],
        );
      }
    }
