import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 246, 255), // Fondo azul claro
      appBar: AppBar(
        title: const Text('Notas de trabajo'),
        backgroundColor: Colors.blue[700], // Azul oscuro consistente
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú de Navegación',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.book_sharp),
              title: const Text('Projects'),
              onTap: () {
                print('Projects');
              },
            ),
            ListTile(
              leading: const Icon(Icons.draw_outlined),
              title: const Text('Draft'),
              onTap: () {
                print('Draft');
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Shared with me'),
              onTap: () {
                print('Shared with me');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings_applications),
              title: const Text('Settings'),
              onTap: () {
                print('Settings');
              },
            ),
            ListTile(
              leading: const Icon(Icons.people_outline),
              title: const Text('Invite members'),
              onTap: () {
                print('Invite members');
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('New Draft'),
              onTap: () {
                print('New Draft');
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('New Project'),
              onTap: () {
                print('New Project');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Wrap(
              spacing: 40, // Espaciado horizontal entre notas
              runSpacing: 40, // Espaciado vertical entre filas
              children: [
                nota(),
                nota(),
                nota(),
                nota(),
                nota(),
                nota(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget nota() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 220, 240, 255),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 122, 204),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text('NOTA X'),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Contenido de texto ejemplar para los contenedores de las notas'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 100, 170, 240)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.white,
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
