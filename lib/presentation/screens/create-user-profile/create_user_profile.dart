import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class CreateUserProfileScreen extends StatefulWidget {
  const CreateUserProfileScreen({super.key});

  @override
  State<CreateUserProfileScreen> createState() => _CreateUserProfileScreenState();
}

class _CreateUserProfileScreenState extends State<CreateUserProfileScreen> {
  final TextEditingController nameProfileController = TextEditingController();
  final TextEditingController ageProfileController = TextEditingController();
  final TextEditingController occupationProfileController = TextEditingController();



  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: const Text('Crear Perfil'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameProfileController,
              decoration: const InputDecoration(labelText: 'Nombre de la persona'),
            ),
             const SizedBox(height: 30),
            TextField(
              controller: ageProfileController,
              decoration: const InputDecoration(labelText: 'Edad de la persona'),
              keyboardType: TextInputType.number,
            ),
             const SizedBox(height: 30),
            TextField(
              controller: occupationProfileController,
              decoration: const InputDecoration(labelText: 'Ocupación actual de la persona'),
            ),
            const SizedBox(height: 30),
          FilledButton(
            onPressed: (){
              context.push("/details-profile/${nameProfileController.text}/${ageProfileController.text}/${occupationProfileController.text}");
            },
            child: const Text('Guardar y ver perfil', style: TextStyle(color: Colors.white)),
          )

          ],
        ),
      ),
    );
  }
}