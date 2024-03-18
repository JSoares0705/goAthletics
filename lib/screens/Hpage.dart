import 'package:flutter/material.dart';
import 'package:go_athletics/screens/Hpagecontroller.dart';
import 'package:get/get.dart';

final LogController logController = Get.put(LogController());

class Hpage extends StatefulWidget {
  const Hpage({super.key});

  @override
  State<Hpage> createState() => _HpageState();
}

class _HpageState extends State<Hpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 57, 9, 65),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            height: 130,
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Home Page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
            child: TextField(
              controller: logController.dateTextEditingController,
              decoration: const InputDecoration(
                  labelText: 'Log Date',
                  hintText: "dd/mm/yyyy",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  isDense: true),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
            child: TextField(
              controller: logController.massTextEditingController,
              decoration: const InputDecoration(
                  labelText: 'User body Mass (kg)',
                  hintText: "Eg. 80kg",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  isDense: true),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              logController.addLog(logController.dateTextEditingController.text,
                  logController.massTextEditingController.text);
            },
            child: const Text('Add Log'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: logController.logs.value.length,
              itemBuilder: (context, index) {
                if(logController.logs.value.isNotEmpty && index < logController.logs.value.length){
                  return ListTile(
                  title: Text(logController.logs.value[index].Date.toString()),
                  subtitle: Text("${logController.logs.value[index].Mass}kg"),
                  trailing: GestureDetector(
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onTap: () {
                      logController.removeLog(index);
                    },
                  ),
                );
                }
                return Container();
              },
            ),
          )
        ],
      ),
    );
  }
}
