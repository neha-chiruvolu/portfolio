import 'package:flutter/material.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/about': (context) => const About(),
        '/projects': (context) => const Projects(),
      },
    );
  }
}

// ---------------- HOME PAGE ----------------

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/about'),
            child: const Text('About', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/projects'),
            child: const Text('Projects', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),

      drawer: const Menu(),

      body: LayoutBuilder(
        builder: (context, box) {
          double size = box.maxWidth < 600 ? 130 : 170;

          return Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: size / 2,
                    backgroundColor: Colors.deepPurple[100],
                    child: const Text(
                      'NS',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Text(
                    'Chiruvolu Neha Sree Santhi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: box.maxWidth < 600 ? 26 : 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'CSE-Applied Maths (3rd Year)',
                    style: TextStyle(fontSize: 18),
                  ),

                  const Text(
                    'CR RAO AIMSCS',
                    style: TextStyle(fontSize: 18),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Hello! I am a Computer Science student interested '
                    'in programming, machine learning and technology.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  ),

                  const SizedBox(height: 30),

                  Wrap(
                    spacing: 15,
                    children: [
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/about'),
                        child: const Text('About Me'),
                      ),
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/projects'),
                        child: const Text('Projects'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ---------------- ABOUT PAGE ----------------

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Page(
      title: 'About Me',
      child: Column(
        children: [
          const Text(
            'About Me',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'I am Chiruvolu Neha Sree Santhi, a CSE-Applied Maths '
            'student at CR RAO AIMSCS. I am interested in programming, '
            'machine learning and cryptography.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17),
          ),

          const SizedBox(height: 30),

          const Text(
            'My Skills',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: const [
              Chip(label: Text('Python')),
              Chip(label: Text('Basics of C')),
              Chip(label: Text('Basics of ML')),
              Chip(label: Text('Basics of Cryptography')),
            ],
          ),

          const SizedBox(height: 30),

          const Text(
            'Areas of Interest',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            'Programming • Machine Learning • Deep Learning • Cryptography',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}

// ---------------- PROJECTS PAGE ----------------

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Page(
      title: 'My Projects',
      child: LayoutBuilder(
        builder: (context, box) {
          int columns = box.maxWidth > 900
              ? 3
              : box.maxWidth > 600
                  ? 2
                  : 1;

          return Column(
            children: [
              const Text(
                'My Projects',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),

              const SizedBox(height: 25),

              GridView.count(
                crossAxisCount: columns,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: const [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.music_note,
                              size: 50, color: Colors.indigo),
                          SizedBox(height: 15),
                          Text(
                            'Music Generation using Deep Learning',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_run,
                              size: 50, color: Colors.indigo),
                          SizedBox(height: 15),
                          Text(
                            'Human Activity Recognition',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.analytics,
                              size: 50, color: Colors.indigo),
                          SizedBox(height: 15),
                          Text(
                            'Patients Analysis',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

// ---------------- COMMON PAGE ----------------

class Page extends StatelessWidget {
  final String title;
  final Widget child;

  const Page({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      drawer: const Menu(),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1100),
            child: child,
          ),
        ),
      ),
    );
  }
}

// ---------------- MOBILE MENU ----------------

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Center(
              child: Text(
                'My Portfolio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('About Me'),
            onTap: () => Navigator.pushReplacementNamed(context, '/about'),
          ),

          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('Projects'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, '/projects'),
          ),
        ],
      ),
    );
  }
}