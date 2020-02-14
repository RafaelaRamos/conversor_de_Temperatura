import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
  
home: Home(
  
),
));

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
          return new MaterialApp(
          home: new Material(
          child: new Center(
          child: new Text("Hello world!"),
        ),
      ),
    );
  }
}


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Calculadora
  TextEditingController numUmController = TextEditingController();
  
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _resultadoCalculadora="Resultado em: ";
  
  void calcularF(){
    setState(() {
      double numUm = double.parse(numUmController.text);
  
      double resultado = numUm *9 /5+32;

    _resultadoCalculadora = ""+"Fahrenheit :" + resultado.toStringAsPrecision(3);

    });
  }void calcularK(){
    setState(() {
      double numUm = double.parse(numUmController.text);
     
      double resultado = numUm +273;

    _resultadoCalculadora = ""+"Kelvin : " + resultado.toStringAsPrecision(3);

    });
  }

 
      @override
  Widget build(BuildContext context) {
          return Scaffold(

            appBar: AppBar(
            title: Text("Conversor de Temperatura"),
            centerTitle: true,
            backgroundColor: Colors.blue),
           
            body: Center
            
            
            (
            
           child:Form(
             
            
          key: _formKey,
          child: Column(

mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
              
               Container(
                 width:180.0,
                 height: 100.0,
                 child: new TextFormField(
              keyboardType: TextInputType.number,
            
              
              decoration: InputDecoration(
                
              
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.horizontal()
                
              ),
              labelText: "Graus em Celsius",
              
              labelStyle: TextStyle(
              color: Colors.blue
              
              )
),
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.blue,
                
                fontSize: 20.0,
),controller: numUmController)
              
        ),Text(
              _resultadoCalculadora,
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.redAccent,
              fontSize: 24.0
              ),
                              
                    ),
                    Container(
                      width:200,
                      
                     child: new Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children:<Widget>[
                        
              FlatButton(
              child: const Text('Fahrenheit'),textColor:Colors.white ,
              color: Colors.blue,
              splashColor: Colors.greenAccent,
              onPressed: () {
              setState(() {
            calcularF();
              });}
              
          ),
             FlatButton(
              child: const Text('Kelvin'),textColor:Colors.white,
              color: Colors.blue,
              
              splashColor: Colors.greenAccent,
              onPressed: () {
              setState(() {
            calcularK();
              });})]))
          ]),
          ),
              
          ));
          }     
          
          
           }