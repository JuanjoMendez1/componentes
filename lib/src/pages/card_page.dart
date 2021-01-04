import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo4(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo4(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_filter,
              color: Colors.blue,
            ),
            
            title: Text('La primer tarjeta'),
            subtitle: Text('lorem'),
            onTap: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
        // clipBehavior: Clip.antiAlias,

        child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/a/ae/Joseph_Wright_of_Derby_-_Italian_Landscape_with_Mountains_and_a_River_-_Google_Art_Project.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),

//       Image(
// image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/ae/Joseph_Wright_of_Derby_-_Italian_Landscape_with_Mountains_and_a_River_-_Google_Art_Project.jpg'),
//       ),

        Container(padding: EdgeInsets.all(10.0), child: Text('Imagen Grande'))
      ],
    ));

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
boxShadow: <BoxShadow>[
  BoxShadow(
    color: Colors.green,
    blurRadius: 10.0,
    spreadRadius: 2.0,
    offset: Offset(2.0, 1.0)
  )
]
        //  color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo3() {
    final card = Container(
        // clipBehavior: Clip.antiAlias,

        
        child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRZUQbwqoNl9FZE81mOUvLke82YbCmCKI7AWA&usqp=CAU'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),

//       Image(
// image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/ae/Joseph_Wright_of_Derby_-_Italian_Landscape_with_Mountains_and_a_River_-_Google_Art_Project.jpg'),
//       ),

        Container(padding: EdgeInsets.all(10.0), child: Text('Little Caesar',
            
        )
        )
      ],
    ));

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
boxShadow: <BoxShadow>[
  BoxShadow(
    color: Colors.blue[100],
    blurRadius: 10.0,
    spreadRadius: 2.0,
    offset: Offset(2.0, 1.0)
  )
]
        //  color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo4() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_filter,
              color: Colors.blue,
            ),
            
            title: Text('Little Caesar'),
            subtitle: Text('Pizzas y Snak'),
            onTap: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver Menu'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ir a pagina Web'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
  

}
