import 'package:flutter/material.dart';
import 'package:actividad_3/second_page.dart';
import 'package:flutter/rendering.dart';

class Comida {
  late String directorio;
  late String nombre;
  late int precio;
  late String descripcion;

  Comida(String directorio, String nombre, int precio, String descripcion) {
    this.directorio = directorio;
    this.nombre = nombre;
    this.precio = precio;
    this.descripcion = descripcion;
  }
}

void main() => runApp(pantalla_principal());

class pantalla_principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad 3',
      color: const Color.fromRGBO(1, 0, 0, 1),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Actividad 3 :D"),
            backgroundColor: const Color.fromRGBO(146, 1, 1, 1),
          ),
          body: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return myCards(context, index);
            },
          )),
    );
  }

  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.yellowAccent),
      Icon(Icons.star, color: Colors.yellowAccent),
      Icon(Icons.star, color: Colors.yellowAccent),
      Icon(Icons.star, color: Colors.yellowAccent),
      Icon(Icons.star, color: Colors.black),
    ],
  );

  Widget myCards(BuildContext context, int index) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(5, 5, 8, 0),
              title: Text("Comidita X"),
              subtitle: Text("Rika comida alta en x cosa"),
              leading: Container(
                child: Image.asset(hamburguesa.directorio, scale: 1.2),
              ),
              trailing: const Icon(Icons.food_bank_rounded),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                stars,
                TextButton(
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => second_page()),
                          )
                        },
                    child: Text("Comprar")),
              ],
            ),
          ],
        ));
  }
} // End of class

Comida hamburguesa = new Comida(
    "assets/images/hamburguesaClasica.jpeg",
    "Hamburguesa",
    80,
    "Hamburguesa con 300 gr. de carne de res con lechuga, jitomate, cebolla y queso manchego.");
Comida arosdeCebolla = new Comida(
    "assets/images/arosdeCebolla.jpeg",
    "Aros de Cebolla",
    25,
    "100 g de aros de cebolla empanizados acompañados de aderezo mil Islas.");
Comida boneless = new Comida("assets/images/boneless.jpeg", "Boneless", 195,
    "300 gr de boneless (trozos de pechuga empanizado) aderezado con salsa búfalo. Acompañado de 25 ml de aderezo Ranch.");
Comida cerveza = new Comida("assets/images/cerveza.jpeg", "Cerveza", 80,
    "250 ml de cerveza artesanal, obscura de origen mexicano. ");
Comida dedosQueso = new Comida(
    "assets/images/dedosdeQueso.jpeg",
    "Dedos de quesito",
    52,
    "300 g de dedos de queso empanizados acompañados de crema ácida y salsa de tomate.");
Comida galletas = new Comida("assets/images/galletas.jpeg", "Galletas", 28,
    "100 gr de galleta artesanal con chispas de chocolate y relleno sorpresa.");
Comida helado = new Comida("assets/images/helado.jpeg", "Helado", 35,
    "250 ml de helado vainilla acompañado de jarabe de chocolate.");
Comida hotDogs = new Comida("assets/images/hotDog.jpeg", "Hot Dogs", 60,
    "Hot dog con salchicha de pavo y tocino acompañado de pico de gallo.");
Comida milkShake = new Comida("assets/images/milkShake.jpeg", "Milk Shake", 38,
    "250ml de malteada de chocolate con crema batida y chispas. ");
Comida papas = new Comida(
    "assets/images/papasalafrancesa.jpeg",
    "Papitas a la francesa",
    45,
    "250g de papas fritas condimentadas con sal y pimienta. ");
Comida pasta = new Comida("assets/images/pasta.jpeg", "Pasta", 240,
    "380 gr  de spaghetti alla bolognesa acompañado de pan de ajo.");
Comida pastel = new Comida("assets/images/pastel.jpeg", "Pastel", 58,
    "150 gr de pastel de chocolate relleno de mermelada de frutos rojos. ");
Comida pizza = new Comida("assets/images/pizza.jpeg", "Pizza", 249,
    "Pizza de pepperoni de 30 cm con queso mozzarella y orilla rellena de queso.");
Comida sandwich = new Comida(
    "assets/images/sandwich.jpeg",
    "Sandwich bien rikolino",
    70,
    "Emparedado a la parrilla de jamón de pavo con queso manchego y Chihuahua.");
Comida smoothie = new Comida("assets/images/smoothie.jpeg", "Smoothie", 38,
    "250ml de malteada de chocolate con crema batida y chispas.");
