import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {

  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController controller = TextEditingController();
  final List<String> product = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de compras'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    labelText: 'Nuevo producto',
                  ),
                ),
              ),
              IconButton(onPressed: (){
                if(controller.text.isNotEmpty){
                  setState(() {
                     product.add(controller.text);
                  });
                }
              }, icon: const Icon(Icons.add))
            ],
          ),
          Expanded(
            child: ListView.builder(
            itemCount: product.length,
            itemBuilder: (context, index){
              return Dismissible(
                key: Key(product[index]),
                onDismissed: (direction){
                  setState(() {
                    product.removeAt(index);
                  });
                },
                background: Container(color: Colors.red,),
                child: Text(product[index])
                );
          }) 
          )
         
        ],
         ),
        ),
        
      ),
    );
  }
}