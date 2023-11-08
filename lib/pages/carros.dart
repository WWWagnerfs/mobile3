import 'package:flutter/material.dart';

class PageCar extends StatefulWidget {
  const PageCar({super.key});

  @override
  State<PageCar> createState() => _PageCarState();
}

class _PageCarState extends State<PageCar> {

  CarroItem() => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Column(
      children: [
        //asst da imagem
        //Titulo do carro fonte fina
        // Marca do carro fonte bold
        // Preço do carro fina
      ]),
  );
  
  MarcaItem(String titulo) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/acura_logo.jpg",
          width: 48,
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 30, 8, 9),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 197, 196, 196),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Marcas",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Ver todas",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(53, 85, 255, 1),
                          decorationColor: Color.fromRGBO(53, 85, 255, 1),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                    crossAxisCount: 4,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    children: [
                      MarcaItem("Acura"),
                      MarcaItem("Acura"),
                      MarcaItem("Acura"),
                      MarcaItem("Acura"),
                      MarcaItem("Acura"),
                      MarcaItem("Acura"),
                      MarcaItem("Acura"),
                      MarcaItem("Acura"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
