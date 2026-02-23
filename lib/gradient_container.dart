import 'package:first_app/styled_text.dart';
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

  // Esta forma permite eu setar as duas cores separadamente
  final Color colorOne;
  final Color colorTwo;

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
      child: const Center(
        child: StyledText("Hello World"),
      ),
    );
  }
}
