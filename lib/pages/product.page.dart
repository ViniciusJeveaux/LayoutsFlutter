import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  String teste;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset("assets/xtudo.jpg"),
                

              ),
            ),

          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top:10,
                left: 10,
                right: 10,
              ),
              child: Text(
                "X-Tudo",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top:5,
                left: 10,
                right: 10,
              ),
              child: Text(
                "R\$ 10,00",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top:5,
                left: 10,
                right: 10,
              ),
              child: Text(
                "Pão, Bife Caseiro, Queijo Mussarela, Bacon, Ovo, Presunto, Alface, Tomate, Batata e Milho",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
