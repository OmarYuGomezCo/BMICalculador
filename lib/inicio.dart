
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultados.dart';

const inactiveColor = Color(0xFF1D1E330);
const activeColor = Color(0xFF3700B3);

enum Genero {
  mujer,
  hombre,
}

int altura = 160;
int peso = 60;
int edad = 21;
double imc = 0.0;


class Inicio extends StatefulWidget {
  const Inicio({super.key});

  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

   Genero genSeleccionado = Genero.mujer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MONITOR DE SALUD'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    genSeleccionado = Genero.hombre;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: genSeleccionado == Genero.hombre ? activeColor : inactiveColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.mars, size: 55.0,),
                      SizedBox(height: 5.0,),
                      Text('HOMBRE', style: TextStyle(
                        fontSize: 18.0, color: Color(0xFF8D8E98),
                      ),)
                    ],
                  ),
                ),
              )),
              Expanded(child: GestureDetector(
              onTap: () {
                setState(() {
                  genSeleccionado = Genero.mujer;
                });
              },
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: genSeleccionado==Genero.mujer ? activeColor : inactiveColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.venus, size: 55.0,),
                      SizedBox(height: 5.0,),
                      Text('MUJER', style: TextStyle(fontSize: 18.0,
                      color: Color(0xFF8D8E98)),)
                    ],
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF1D1E33),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Altura' ,style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98))),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(altura.toString(), style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color:  Color(0xFF8D8E98)),),
                    Text(' cm', style: TextStyle(fontSize: 16.0, color:  Color(0xFF8D8E98))),
                  ],
                ),
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 10.0),
                      thumbColor: Colors.blue,
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29EB1555),
                      inactiveTrackColor: Color(0xFF808e98)
                    ),
                  child: Slider(
                    value: altura.toDouble(),
                    min: 40.0,
                    max: 210.0,
                    onChanged: (double nuevoValor){
                        //print(nuevoValor);
                        setState(() {
                          altura = nuevoValor.round();
                        });
                    },
                    // activeColor: Colors.white,
                    // inactiveColor: Colors.grey,
                  ),
                ),
              ],
            ),
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF1D1E33),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Peso', style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98))),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(peso.toString(), style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900, color: Color(0xFF8D8E98))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton.small(
                          child: Icon(Icons.remove, color: Colors.white),
                          backgroundColor: Color(0xFF4c4F56),
                          onPressed: (){
                            setState(() {
                              peso--;
                            });
                          }
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                           FloatingActionButton.small(
                          child: Icon(Icons.add, color: Colors.white),
                          backgroundColor: Color(0xFF4c4F56),
                          onPressed: (){
                            setState(() {
                              peso++;
                            });
                          }
                          ),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF1D1E33),
                ),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Edad', style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98))),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(edad.toString(), style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900, color: Color(0xFF8D8E98))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton.small(
                          child: Icon(Icons.remove, color: Colors.white),
                          backgroundColor: Color(0xFF4c4F56),
                          onPressed: (){
                            setState(() {
                              edad--;
                            });
                          }
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                           FloatingActionButton.small(
                          child: Icon(Icons.add, color: Colors.white),
                          backgroundColor: Color(0xFF4c4F56),
                          onPressed: (){
                            setState(() {
                              edad++;
                            });
                          }
                          ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),
                  GestureDetector(
            onTap: () {
                    imc = (peso / (altura / 100 * altura / 100));
                    imc = ((imc * 1000).ceil() / 1000);
                    
                  Navigator.push( context, MaterialPageRoute( builder: (context) => Resultados(imc: imc)));
                  },/*
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Resultados(imc: imc,)));
            },*/
             child: Container(
              child: Center(
                child: Text('CALCULAR', style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
              height: 50.0,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
                     ),
           ),
        ],
      ),
    );
  }
}