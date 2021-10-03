import 'package:flutter/material.dart';

class Orion extends StatelessWidget {


  String titulo;
  String texto;
  String imagem;
  Orion(this.titulo,this.texto,this.imagem);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.80,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(topRight: Radius.circular(70)),
                image: DecorationImage(
                  image: AssetImage(imagem),
                  fit: BoxFit.cover,
                )),
          ),
          Stack(
            children: [
              Container(decoration: BoxDecoration(
                color: Color(0xffa3a4a4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
                width: MediaQuery.of(context).size.width * 0.70,
                height: MediaQuery.of(context).size.height * 0.23,
                child: null,),
              Container(decoration: BoxDecoration(
                color: Color(0xffb9b9b9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(85),
                ),
              ),
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.215,
              child: null,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Text(
                            titulo,
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: Text(texto),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
