import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 18,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 5,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('new broadcast'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Linked devices'),
                ),
                PopupMenuItem(
                  value: '4',
                  child: Text('Starred messages'),
                ),
                PopupMenuItem(
                  value: '5',
                  child: Text('Settings'),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('Hey ! how are you?'),
                  trailing: Text('3:45 pm'),
                );
              },
            ),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: Colors.green,
                      ),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                  ),
                  title: const Text('John Wick'),
                  subtitle: const Text('35 minutes ago'),
                );
              },
            ),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('↗ Yesterday, 9:19 PM'),
                  trailing: Icon(Icons.phone),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
