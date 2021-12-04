import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

class Todo {

  static String text = "";
  static String descricao = "";

  static List listaTarefas = [];

  static Future<File> getFile() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/dados.json");
  }

  static salvarArquivo() async {

    var arquivo = await getFile();

    // criar dados
    Map<String, dynamic> tarefa = Map();
    tarefa["titulo"] = text;
    tarefa["anotacao"] = descricao;
    tarefa["realizada"] = false;
    listaTarefas.add(tarefa);

    String dados = json.encode(listaTarefas);
    arquivo.writeAsString(dados);

  }

  static lerArquivo() async {
    try {
      final arquivo = await getFile();
      var read = arquivo.readAsString();
      return read;

    }catch(e) {
      return null;
    }
  }

  static removerArquivo(index) async {

    print(index);

  }

}