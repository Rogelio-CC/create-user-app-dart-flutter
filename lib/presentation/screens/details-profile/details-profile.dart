import 'package:flutter/material.dart';
import 'package:wiget_app/presentation/screens/home/home_screen.dart';

class DetailsProfileScreen extends StatelessWidget {
  final String name;
  final int age;
  final String occupation;
  const DetailsProfileScreen({
    required this.name,
    required this.age,
    required this.occupation
  });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalles del perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: $name', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Edad: $age', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Ocupación: $occupation', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: const Text('Volver a Inicio'),
              ),
            )

          ],
        ),
        
      ),
    );
  }
}