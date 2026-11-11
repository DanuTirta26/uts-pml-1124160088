import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Danu Tirta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Bagian Kepala Profil (Tahap 2)
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
              const SizedBox(height: 16),
              Text(
                'Danu Tirta',
                style: textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                'NIM: 2401010123',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 2),
              Text(
                'Program Studi Teknik Informatika',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),

              // Card Kontak (Tahap 3)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Informasi Kontak',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const InfoTile(
                        icon: Icons.email,
                        label: 'Email',
                        value: 'danutirta@email.com',
                      ),
                      const InfoTile(
                        icon: Icons.phone,
                        label: 'Nomor HP',
                        value: '081234567890',
                      ),
                      const InfoTile(
                        icon: Icons.class_,
                        label: 'Kelas',
                        value: 'TI 6A',
                      ),
                      const InfoTile(
                        icon: Icons.code,
                        label: 'GitHub',
                        value: 'github.com/danutirta',
                      ),
                    ],
                  ),
                ),
              ),

              // Card Keahlian / Hobi (Tahap 3)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Keahlian & Hobi',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const InfoTile(
                        icon: Icons.laptop_mac,
                        label: 'Pengembangan Aplikasi',
                        value: 'Flutter & Dart',
                      ),
                      const InfoTile(
                        icon: Icons.design_services,
                        label: 'UI/UX Design',
                        value: 'Figma',
                      ),
                      const InfoTile(
                        icon: Icons.sports_esports,
                        label: 'Hobi',
                        value: 'Bikin kopi &',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Floating Action Button (Tahap 3)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

// Widget Reusable InfoTile (Tahap 3)
class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}