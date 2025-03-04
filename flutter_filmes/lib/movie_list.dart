import 'package:flutter/material.dart';
import 'package:flutter_filmes/helper/filme_helper.dart';
import 'package:flutter_filmes/domain/filme.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  final FilmeHelper filmeHelper = FilmeHelper();
  final _formKey = GlobalKey<FormState>();

  // Controladores dos campos de texto
  final TextEditingController tituloController = TextEditingController();
  final TextEditingController diretorController = TextEditingController();
  final TextEditingController anoController = TextEditingController();
  final TextEditingController notaController = TextEditingController();

  List<Filme> filmes = [];

  @override
  void initState() {
    super.initState();
    _loadFilmes();
  }

  Future<void> _loadFilmes() async {
    List<Filme> lista = await filmeHelper.getFilmes();
    setState(() {
      filmes = lista;
    });
  }

  void _addFilme() async {
    if (_formKey.currentState!.validate()) {
      Filme novoFilme = Filme(
        tituloController.text,
        diretorController.text,
        int.parse(anoController.text),
        double.parse(notaController.text),
      );
      await filmeHelper.saveFilme(novoFilme);
      _loadFilmes(); // Atualiza a lista
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filmes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: tituloController,
                decoration: const InputDecoration(labelText: 'Título'),
                validator: (value) =>
                    value!.isEmpty ? 'Insira um título' : null,
              ),
              TextFormField(
                controller: diretorController,
                decoration: const InputDecoration(labelText: 'Diretor'),
                validator: (value) =>
                    value!.isEmpty ? 'Insira um diretor' : null,
              ),
              TextFormField(
                controller: anoController,
                decoration: const InputDecoration(labelText: 'Ano'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Insira um ano válido' : null,
              ),
              TextFormField(
                controller: notaController,
                decoration: const InputDecoration(labelText: 'Nota'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Insira uma nota' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addFilme,
                child: const Text('Adicionar'),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: filmes.length,
                  itemBuilder: (context, index) {
                    final filme = filmes[index];
                    return ListTile(
                      title: Text(filme.titulo),
                      subtitle: Text(filme.direcao),
                      trailing: Text('${filme.nota}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
