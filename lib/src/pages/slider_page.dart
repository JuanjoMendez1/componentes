import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {


  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider =100.0;
  bool _bloquearChec = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Slider'),
    ),
    body: Container(
      padding: EdgeInsets.only(top: 50.0),
      child: Column(children: <Widget>[
        _crearSlider(),
        _checkBox(),
        _crearSwitch(),
        Expanded(child: _crearImagen()),
      ],)
    ),
    );
  }
  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
     onChanged: (_bloquearChec) ? null : ( valor ){
       setState(() {
         _valorSlider = valor;
       });
     }
     );
  }
  Widget _checkBox(){
    // return Checkbox(
    //   value: _bloquearChec,
    //    onChanged: (valor){
    //      setState(() {
    //        _bloquearChec = valor;
    //      });
    //    });
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearChec,
       onChanged: (valor){
         setState(() {
           _bloquearChec = valor;
         });
       });
  }

  Widget _crearSwitch(){

    return SwitchListTile(
      title: Text('Bloquear Slider con Switch'),
      value: _bloquearChec,
       onChanged: (valor){
         setState(() {
           _bloquearChec = valor;
         });
       });
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://i.blogs.es/b138e3/xjp2qlie7ba2php5ji7pbiv6au/450_1000.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}