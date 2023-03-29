

import 'package:flutter/material.dart';

class Resultados extends StatelessWidget {
    final double imc;
  const Resultados({Key? key, required this.imc}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
      ),
      body: _body(),       
    );
  }
  _body(){
        List results = getResult();
      return Column(        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: 
          Container(
            child: Text('RESULTADOS', style: TextStyle(
              fontSize: 35.0, 
              fontWeight: FontWeight.bold
              ),
            ),
          ),
          ),          
            Expanded(
          flex: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.white10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(results[0].toUpperCase(),
                                  style: TextStyle(
                                      color: results[1],
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(imc.toString(),
                                  style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(results[2],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
        ],
      );
    }
   List getResult() {
    if (imc < 18.5) {
      return [
        "Bajo Peso",
        Colors.orangeAccent,
        "Tienes un bajo peso corporal."
      ];
    } else if (imc >= 18.5 && imc <= 24.9) {
      return [
        "Normal",
        Colors.greenAccent,
        "Tienes un peso corporal normal."
      ];
    } else if (imc >= 25 && imc <= 29.9) {
      return [
        "Sobrepeso",
        Colors.deepOrange,
        "Tienes un peso corporal en sobrepeso."
      ];
    } else {
      return [
        "Obesidad I",
        Colors.redAccent,
        "Tienes un peso corporal en obesidad."
      ];
    
    }
  }
}