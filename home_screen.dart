import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text("Bloom"),

      ),

      body: ListView(

        padding: const EdgeInsets.all(20),

        children: [

          const Text(

            "Bom dia 🌸",

            style: TextStyle(

              fontSize: 28,

              fontWeight: FontWeight.bold,

            ),

          ),

          const SizedBox(height: 20),

          Card(

            child: ListTile(

              leading: const Icon(Icons.directions_bus),

              title: const Text("Próximo ônibus"),

              subtitle: const Text("07:20"),

            ),

          ),

          const SizedBox(height: 10),

          Card(

            child: ListTile(

              leading: const Icon(Icons.medication),

              title: const Text("Próximo remédio"),

              subtitle: const Text("08:00"),

            ),

          ),

          const SizedBox(height: 10),

          Card(

            child: ListTile(

              leading: const Icon(Icons.calendar_month),

              title: const Text("Próximo compromisso"),

              subtitle: const Text("Faculdade - 09:20"),

            ),

          ),

          const SizedBox(height: 20),

          const Text(

            "Tarefas",

            style: TextStyle(

              fontSize: 22,

              fontWeight: FontWeight.bold,

            ),

          ),

          CheckboxListTile(

            value: false,

            onChanged: (v){},

            title: const Text("Estudar Física"),

          ),

          CheckboxListTile(

            value: false,

            onChanged: (v){},

            title: const Text("Comprar remédio"),

          ),

        ],

      ),

    );

  }

}
