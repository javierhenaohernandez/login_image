import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final child;

  const AuthBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          _HeaderIcon(),
          child, //CHILD*: ESTABLECE EL CONTENEDOR CENTRAL DEL LOGIN
        ],
      ),
    );
  }
}

// CONTIENE LAS CARACTERISTICAS DEL ICONO PERSON
class _HeaderIcon extends StatelessWidget {
  //const _HeaderIcon({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //SAFEAREA: REALIZA SEPARACION DEL ICONO PERSON DEL NOTCH O MUESCA SUPERIOR
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Icon(Icons.forest_outlined, color: Colors.white, size: 100),
        //TODO: implemetar imagen sk, cambiar icono
        //child: Image(image: AssetImage('assets/skc.png')),
      ),
    );
  }
}

// se define la division superior de la pantalla login
class _PurpleBox extends StatelessWidget {
  //const _PurpleBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          Positioned(child: _Bubble(), top: 90, left: 30),
          Positioned(child: _Bubble(), top: -40, left: -30),
          Positioned(child: _Bubble(), top: -50, right: -20),
          Positioned(child: _Bubble(), bottom: -50, left: 10),
          Positioned(child: _Bubble(), bottom: 120, right: 20),
        ],
      ),
    );
  }

// este metodo define el color y gradiente de la parte
// superirior de la pantalla login
  BoxDecoration _purpleBackground() => BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 15, 90, 202),
            Color.fromARGB(255, 86, 136, 166),
          ],
        ),
      );
}

//se crea la clase para realizar las burbujas flotantes de la parte
//superior de la pantalla
class _Bubble extends StatelessWidget {
  //const _Bubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
