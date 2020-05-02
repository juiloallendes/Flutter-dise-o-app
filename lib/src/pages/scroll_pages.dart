import 'package:flutter/material.dart';

class ScrollPages extends StatelessWidget {
  const ScrollPages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      )
    );
  }

  _pagina1() {

    return Stack(
      children: <Widget>[
        _colorfondo(),
        _imagenfondo(),
        _textos(),
      ],
    );

  }


  Widget _colorfondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenfondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/loading.png'),
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _textos() {

    final estilotext = TextStyle(color: Colors.white, fontSize: 50.0, decoration:TextDecoration.none);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text(
            '11°',
             style: estilotext,
          ),
          Text(
            'Miercoles',
             style: estilotext,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 80.0,
            color: Colors.white,
          ),
          

        ],
      ),
    );
  }

  _pagina2() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

}