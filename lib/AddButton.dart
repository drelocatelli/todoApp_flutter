import 'package:flutter/material.dart';
import 'package:todoapp/Home.dart';
import 'package:todoapp/Todo.dart';

class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      elevation: 5, // sombra
      onPressed: (){
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Adicionar tarefa"),
                content: Column(

                  children: [
                    TextField(
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(),
                        labelText: "Digite sua tarefa",
                      ),
                      onChanged: (text) {
                        Todo.text = text;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(),
                        labelText: "Descrição",
                      ),
                      onChanged: (text) {
                        Todo.descricao = text;
                      },
                    ),
                  ],
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("Cancelar"),
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      Todo.salvarArquivo(),
                      Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Home(),
                    )),
                    },
                    child: Text("Salvar"),
                  ),
                ],
              );
            }
        );
      },
    );
  }
}
