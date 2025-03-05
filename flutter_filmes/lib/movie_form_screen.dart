import 'package:flutter/material.dart';
import 'package:flutter_filmes/helper/filme_helper.dart';
import 'package:flutter_filmes/domain/filme.dart';

class MovieFormScreen extends StatefulWidget {
  final Filme? filme;

  const MovieFormScreen({super.key, this.filme});

  @override
  State<MovieFormScreen> createState() => _MovieFormScreenState();
}

class _MovieFormScreenState extends State<MovieFormScreen> {
  final FilmeHelper filmeHelper = FilmeHelper();
  final _formKey = GlobalKey<FormState>();

  final TextEditingController tituloController = TextEditingController();
  final TextEditingController diretorController = TextEditingController();
  final TextEditingController resumoController = TextEditingController();
  final TextEditingController anoController = TextEditingController();
  final TextEditingController notaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.filme != null) {
      tituloController.text = widget.filme!.titulo;
      diretorController.text = widget.filme!.direcao;
      resumoController.text = widget.filme!.resumo;
      anoController.text = widget.filme!.ano.toString();
      notaController.text = widget.filme!.nota.toString();
    }
  }

  void _saveFilme() async {
    if (_formKey.currentState!.validate()) {
      Filme filme = Filme(
        tituloController.text,
        int.parse(anoController.text),
        diretorController.text,
        resumoController.text,
        double.parse(notaController.text),
      );

      if (widget.filme == null) {
        await filmeHelper.saveFilme(filme);
      } else {
        filme.id = widget.filme!.id;
        await filmeHelper.updateFilme(filme);
      }

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.filme == null ? 'Adicionar Filme' : 'Editar Filme')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: tituloController,
                decoration: const InputDecoration(labelText: 'Título'),
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: anoController,
                decoration: const InputDecoration(labelText: 'Ano'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: diretorController,
                decoration: const InputDecoration(labelText: 'Diretor'),
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: resumoController,
                decoration: const InputDecoration(labelText: 'Resumo'),
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: notaController,
                decoration: const InputDecoration(labelText: 'Nota'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveFilme,
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
