import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
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

  double _nota = 3.0;
  File? _image;

  @override
  void initState() {
    super.initState();
    if (widget.filme != null) {
      tituloController.text = widget.filme!.titulo;
      diretorController.text = widget.filme!.direcao;
      resumoController.text = widget.filme!.resumo;
      anoController.text = widget.filme!.ano.toString();
      _nota = widget.filme!.nota;
      if (widget.filme!.urlCartaz.isNotEmpty) {
        _image = File(widget.filme!.urlCartaz);
      }
    }
  }

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _saveFilme() async {
    if (_formKey.currentState!.validate()) {
      Filme filme = Filme(
        tituloController.text,
        int.parse(anoController.text),
        diretorController.text,
        resumoController.text,
        _nota,
      );

      if (_image != null) {
        filme.urlCartaz = _image!.path;
      }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: _pickImage,
                child: _image != null
                    ? Image.file(_image!, height: 150)
                    : Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Icon(Icons.image, size: 50, color: Colors.grey),
                      ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: tituloController,
                decoration: const InputDecoration(labelText: 'Título'),
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: anoController,
                decoration: const InputDecoration(labelText: 'Ano'),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
              const SizedBox(height: 20),
              const Text(
                'Nota do Filme',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              RatingBar.builder(
                initialRating: _nota,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    _nota = rating;
                  });
                },
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _saveFilme,
                  child: const Text('Salvar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
