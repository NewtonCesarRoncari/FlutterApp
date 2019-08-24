import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.pages.dart';
import 'package:flutter_app/textfields/text.fields.dart';

class LoginPage extends StatelessWidget {
  TextFields _textFields = TextFields();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: 30,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
             width: 128,
             height: 128,
             child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            _textFields.buildTextFormField("E-mail"),
            SizedBox(
              height: 10,
            ),
            _textFields.buildTextFormFieldPassWord("senha"),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                ),
                onPressed: (){},
              ),
            ),
            SizedBox(
              height: 40,
            ),

            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3,1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F)
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "LOGIN COM FACEBOOK",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/fb-icon.png"),
                          width: 28,
                          height: 28,
                        ),
                      ),
                    ],
                  ),
                  onPressed: (){},
                ),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cadastre-Se",
                  textAlign: TextAlign.right,
                ),
                onPressed: (){},
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }


}
