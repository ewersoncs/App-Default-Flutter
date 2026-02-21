import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// Alignment? startAlignment -> opcional
// final -> a variavel só pode ser reconhecido em run time Ex.: DateTime.Now().
// const -> constante de tempo de compilação, objeto imutável.

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 58, 12, 134),
            Color.fromARGB(255, 88, 19, 156),
          ],
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
