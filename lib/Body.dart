import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:todoapp/Todo.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();

    Todo.lerArquivo().then((dados) {
      setState(() {
        Todo.listaTarefas = json.decode(dados);
      });
    });

  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: Todo.listaTarefas.length,
            itemBuilder: (context, index){
              return ListTile(
                onLongPress: (){
                    print("clicado");
                  },
                title: Text(Todo.listaTarefas[index]["titulo"], style: TextStyle(color: Colors.black)),
                subtitle: Text("ola", style: TextStyle(color: Colors.black26, fontSize: 13)),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(height: 0);
            },
          ),
        ),
      ],
    );
  }
}
