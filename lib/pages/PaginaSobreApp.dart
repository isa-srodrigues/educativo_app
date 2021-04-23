import 'package:flutter/material.dart';

class PaginaSobreApp extends StatefulWidget {
  @override
  _PaginaSobreAppState createState() => _PaginaSobreAppState();
}

class _PaginaSobreAppState extends State<PaginaSobreApp> {
  String value = "";
  MaterialColor cor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contagem"),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("\n\n\n\n\nQuantas bolas abaixo?"),
              Image.asset("assets/images/c4.jpg",width:200,height:200),
              ElevatedButton(
                  child: Text("1",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  onPressed: () {
                    setState(() {
                      value = "Tente novamente!";
                      cor = Colors.red;
                    });
                  }
              ),
              ElevatedButton(
                  child: Text("3",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  onPressed: (){
                    setState(() {
                      value = "Tente novamente!";
                      cor = Colors.red;
                    });
                  }
              ),
              ElevatedButton(
                  child: Text("4",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  onPressed: (){
                    setState(() {
                      value = "Parabéns!";
                      cor = Colors.green;
                    });
                  }
              ),
              ElevatedButton(
                  child: Text("2",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  onPressed: (){
                    setState(() {
                      value = "Tente novamente!";
                      cor = Colors.red;
                    });
                  }
              ),
              Text("\n\n\n"),
              Text(value, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: cor
              ),)
            ],
        ),
      ),
    );
  }
}
