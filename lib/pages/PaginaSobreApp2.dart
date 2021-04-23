import 'package:flutter/material.dart';

class PaginaSobreApp2 extends StatefulWidget {
  @override
  _PaginaSobreAppState2 createState() => _PaginaSobreAppState2();
}

class _PaginaSobreAppState2 extends State<PaginaSobreApp2> {
  String value = "";
  MaterialColor cor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Letras"),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("\n\n\nComplete o texto abaixo\n\n\n"),
              Image.asset("assets/images/s.jpg",width:500,height:250),
              ElevatedButton(
                  child: Text("WA",
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
                  child: Text("KA",
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
                  child: Text("QA",
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
                  child: Text("CA",
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
              Text("\n"),
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
