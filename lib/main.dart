import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Cetakan data untuk setiap item tugas
class Task {
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});
}

// 1. MyApp diubah menjadi StatefulWidget agar bisa menyimpan perubahan daftar tugas
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 2. Penyimpanan data & fungsi logika utama
  final List<Task> _tasks = [];
  final TextEditingController _taskController = TextEditingController();

  void _addTask() {
    final taskTitle = _taskController.text.trim();
    if (taskTitle.isNotEmpty) {
      setState(() {
        _tasks.add(Task(title: taskTitle));
      });
      _taskController.clear();
    }
  }

  void _toggleTaskDone(int index) {
    setState(() {
      _tasks[index].isDone = !_tasks[index].isDone;
    });
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  // 3. Struktur tampilan 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFE4EEED),
        appBar: AppBar(
          title: const Text('Mini Task Tracker'),
          centerTitle: true,
          backgroundColor: const Color(0xFF30E66D),
        ), // AppBar
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // Baris Input Tugas.
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _taskController,
                      decoration: InputDecoration(
                        hintText: 'Apa agenda hari ini?',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: _addTask,
                    child: Text('Tambah'),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Area Daftar Tugas.
              Expanded(
                child: _tasks.isEmpty
                    ? const Center(
                        child: Text('Lakukan tugasmu hari ini.'),
                      )
                    : ListView.builder(
                        itemCount: _tasks.length,
                        itemBuilder: (context, index) {
                          final task = _tasks[index];
                          return Card(
                            child: ListTile(
                              leading: Checkbox(
                                value: task.isDone,
                                onChanged: (_) => _toggleTaskDone(index),
                              ),
                              title: Text(
                                task.title,
                                style: TextStyle(
                                  decoration: task.isDone
                                      ? TextDecoration.lineThrough
                                      : TextDecoration.none,
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                onPressed: () => _deleteTask(index),
                              ),
                            ),
                          );
                        },
                      ),
              ), // Expanded
            ],
          ), // Column
        ), // Padding
      ), // Scaffold
    ); // MaterialApp
  }
}