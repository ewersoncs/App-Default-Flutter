import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  var changedDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      changedDiceImage = 'assets/images/dice-5.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //Controla o comportamento de dimensionamento do Flex ao longo do seu eixo principal.
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          changedDiceImage,
          width: 200,
        ),
        // Outra abordagem seria por um sizedBox()
        Padding(padding: const EdgeInsetsGeometry.only(top: 20)),
        // Flutter aceita 3 tipos de botões
        // OutlinedButton(onPressed: () => {}, child: Text("Button")),
        // TextButton(onPressed: () => {}, child: const Text("Jogar Dados")),
        ElevatedButton(
          // Função anônima () {}
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: Text("Jogar Dados"),
        ),
      ],
    );
  }
}
