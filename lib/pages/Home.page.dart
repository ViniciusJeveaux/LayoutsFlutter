import 'package:cardapio/pages/product.page.dart';
import 'package:cardapio/pages/signup.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 50),
                search(),
                SizedBox(height: 30),
                Text("Categorias",
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(height: 10),
                Container(
                  height: 90,
                  child: categoryList(),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Mais pedidos",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    FlatButton(
                      child: Text("Ver todos"),
                      onPressed: (){},
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 320,
                  child: productList(context),
                ),
              ],
            ),
          ),
      ),


    );
  }
}

Widget search(){
  return Container(

    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(128)),
      color: Colors.black.withOpacity(0.1),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: <Widget>[
        SizedBox(width: 5,),
        Container(
          width: 300,
          padding: EdgeInsets.only(left: 10),
          child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
          border: InputBorder.none,
          labelText: "Pesquisar",
          labelStyle: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
      ),
      style: TextStyle(
          fontSize: 22,
          color: Colors.blue,
      ),
    ),
        ),
        Icon(Icons.search),
        SizedBox(width: 10,)


      ],
    ),
  );
}

Widget categoryList(){
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        categoryItem("hamburguer"),
        categoryItem("frech-fries"),
        categoryItem("drink"),
        categoryItem("doce"),
        categoryItem("hamburguer"),
        categoryItem("frech-fries"),
        categoryItem("drink"),
        categoryItem("doce")
      ],
    ),
  );
}

Widget categoryItem(String category){
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        new BoxShadow(
         color: Colors.black12,
         offset: new Offset(1, 1),
         blurRadius: 5,
         spreadRadius: 2,
        )
      ],
      borderRadius: BorderRadius.all(Radius.circular(64)),
    ),
    child: Image.asset("assets/$category.png"),
  );
}

Widget productList(BuildContext context,){
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        productItem(context, "X-Tudo","xtudo.jpg","Pão, Bife caseiro, queijo, ovo, bacon, presunto, salada, batata e milho","10,00"),
        productItem(context, "Coca-Cola lata","coke.png","Refrigerante em lata 350ml sabor cola","4,00"),
        productItem(context, "Cheese Burguer","x-burguer.jpg","Pão, Bife caseiro, queijo, salada, batata e milho","6,00"),
        productItem(context, "Batata Frita","batata.jpg","Porção de batata. 400g","10,00"),


      ],
    ),

  );
}

Widget productItem(BuildContext context, String name, String img, String description, String value){
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    width: 170,
    color: Colors.black12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductPage()
              ),
            );
          },
          child: Image.asset(
            "assets/$img",
            width: 170,
            height: 140,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 30,
          child: Text("$name",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
            ),
          )
        ),
        SizedBox(height: 5),
        Container(
          height: 60,
          child: Text("$description",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300
                ),
              ),
        ),
        SizedBox(height: 5),
        Text("R\$ $value",
          style: TextStyle(
            color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.w300
          ),
        ),


      ],
    ),

  );
}
