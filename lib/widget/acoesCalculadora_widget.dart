import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AcoesCalculadoraWidget extends StatelessWidget{

    final void Function() exibeSoma;
    final void  Function() exibemultiplicacao;
    final void Function() exibedivisao;
    final void Function() exibesubtracao;

  

    const AcoesCalculadoraWidget({super.key,required this.exibeSoma ,required this.exibemultiplicacao,required this.exibedivisao,required this.exibesubtracao});
    
      @override
      Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          // Ícone de Adição
             CircleAvatar(
              backgroundColor: Colors.purple, // Cor de fundo roxa
              child: IconButton(
              onPressed: exibeSoma,
              icon: Icon(
              FontAwesomeIcons.plus,
              color: Colors.white, // Cor do ícone
                ),
              ),
            ),
          CircleAvatar(
            backgroundColor: Colors.purple, // Cor de fundo roxa
            child: IconButton(
            onPressed: exibemultiplicacao,
            icon: Icon(
            FontAwesomeIcons.xmark,
            color: Colors.white, // Cor do ícone
                ),
              ),
            ),
           // Ícone de Divisão
          CircleAvatar(
            backgroundColor: Colors.purple, // Cor de fundo roxa
            child: IconButton(
            onPressed: exibedivisao,
            icon: Icon(
            FontAwesomeIcons.divide,
            color: Colors.white, // Cor do ícone
                ),
              ),
            ),
             // Ícone de Subtração
          CircleAvatar(
            backgroundColor: Colors.purple, // Cor de fundo roxa
            child: IconButton(
            onPressed: exibesubtracao,
            icon: Icon(
            FontAwesomeIcons.minus,
            color: Colors.white, // Cor do ícone
                ),
              ),
            ),
          ],
        );
      }

} 
    

