import 'package:first_app/dice_roll.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// Alignment? startAlignment -> opcional
// final -> a variavel só pode ser reconhecido em run time Ex.: DateTime.Now().
// const -> constante de tempo de compilação, objeto imutável.

class GradientContainer extends StatelessWidget {
  // -> Esta forma permite adicionar as duas cores de uma vez só
  // const GradientContainer({super.key, required this.colors});

  // Esta forma separa em 2 cores permitidas
  const GradientContainer(this.colorOne, this.colorTwo, {super.key});

  // Listas por padrão podem ser editadas.
  // Esta forma é para lista de array com as cores
  // final List<Color> colors;

  // 1. Esta forma permite eu setar as duas cores separadamente
  final Color colorOne;
  final Color colorTwo;

  // 2. Criando o gradiente de cores com construtores personalizados
  const GradientContainer.purple({super.key})
    : colorOne = const Color.fromARGB(255, 58, 12, 134),
      colorTwo = const Color.fromARGB(255, 88, 19, 156);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorOne, colorTwo],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoll(),
      ),
    );
  }
}
