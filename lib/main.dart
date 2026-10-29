
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevHub Dashboard',
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final List<Map<String, dynamic>> metrics = [
    {
      'title': 'Active Users',
      'value': '1,240',
      'icon': Icons.people,
      'color': Colors.deepPurple,
    },
    {
      'title': 'Repositories',
      'value': '85',
      'icon': Icons.folder,
      'color': Colors.blue,
    },
    {
      'title': 'Pull Requests',
      'value': '32',
      'icon': Icons.merge_type,
      'color': Colors.green,
    },
    {
      'title': 'Server Uptime',
      'value': '99.9%',
      'icon': Icons.cloud_done,
      'color': Colors.orange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevHub Analytics'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: metrics.map((metric) {
            return Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: Icon(
                  metric['icon'] as IconData,
                  color: metric['color'] as Color,
                  size: 36,
                ),
                title: Text(
                  metric['title'] as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  metric['value'] as String,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: metric['color'] as Color,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
