import 'package:flutter/material.dart';


const cards = <Map<String, dynamic>>[
  { 'elevation': 0.0, 'title': 'Desierto', 'description': 'Esto es un desierto caluroso', 'image': 'https://concepto.de/wp-content/uploads/2018/09/desierto2-e1537800205712.jpg' },
  { 'elevation': 1.0, 'title': 'Tundra', 'description': 'Esto es un desierto caluroso', 'image': 'https://concepto.de/wp-content/uploads/2018/09/desierto2-e1537800205712.jpg' },
  { 'elevation': 2.0, 'title': 'Selva', 'description': 'Esto es un desierto caluroso', 'image': 'https://concepto.de/wp-content/uploads/2018/09/desierto2-e1537800205712.jpg' },
  { 'elevation': 3.0, 'title': 'Pradera', 'description': 'Esto es un desierto caluroso', 'image': 'https://concepto.de/wp-content/uploads/2018/09/desierto2-e1537800205712.jpg' },
  { 'elevation': 4.0, 'title': 'Llanura', 'description': 'Esto es un desierto caluroso', 'image': 'https://concepto.de/wp-content/uploads/2018/09/desierto2-e1537800205712.jpg' },
  { 'elevation': 5.0, 'title': 'Bosque', 'description': 'Esto es un desierto caluroso', 'image': 'https://concepto.de/wp-content/uploads/2018/09/desierto2-e1537800205712.jpg' }
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             const Text('Tarjetas'),
           //_CardType1()
           /* ...cards.map((card)=> _CardType1(
            elevation: card['elevation'],
            title: card['title'],
            description: card['description'],
            image: card['image'],
            )), 
            TextStyle(fontSize: 24, fontWeight: FontWeight.w900) = ver en donde va esto
            */
            ...cards.map((card)=> _CardType2()),
            const SizedBox(height: 15,)
          ],
        )
        ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final double elevation;
  final String title;
  final String description;
  final String image;
  const _CardType1({
    required this.elevation,
    required this.title,
    required this.description,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: elevation,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(image),
                    Text(title),
                    Text(description)
                  ],
                ),
                ),
            );
          
  }
}

class _CardType2 extends StatelessWidget {
  const _CardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                side:BorderSide(
                  color: Colors.green
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(alignment: Alignment.topRight, child: Text('Desierto', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),)),
                    Align(alignment: Alignment.bottomLeft,child: Text('Es caluroso'))
                  ],
                ),
                ),
            );  
  }
}