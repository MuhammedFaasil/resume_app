import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('View'),
        actions: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.8, color: Colors.black)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.done,
                  color: Colors.green,
                )),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Card(
              child: ListTile(
                title: Text('Title'),
                subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              ),
            ),
          );
        },
      ),
    );
  }
}
