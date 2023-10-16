import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Settings',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const BottomSheetPage(),
    );
  }
}

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(
      builder: (context) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                builder: (context) {
                  return Wrap(
                    children: [
                      const ListTile(
                        leading: Icon(Icons.link),
                        title: Text('Edit name'),
                        iconColor: Colors.green,
                      ),
                      Column(
                        children: [
                          const ListTile(
                            leading: Icon(Icons.edit),
                            title: Text('Edit name'),
                            iconColor: Colors.green,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Text input',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              );
            },
            child: const Text('Hello world'),
          ),
        );
      },
    ));
  }
}
