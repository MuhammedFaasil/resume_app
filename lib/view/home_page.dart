import 'package:flutter/material.dart';

class ResumeHomePage extends StatelessWidget {
  const ResumeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Build Your Resume'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 0,
        ),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Card(
                child: ListTile(
                  title: const Text('Resume'),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete)),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
