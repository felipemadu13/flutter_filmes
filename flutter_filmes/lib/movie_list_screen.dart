import 'package:flutter/material.dart';
import 'package:flutter_filmes/helper/filme_helper.dart';
import 'package:flutter_filmes/domain/filme.dart';
import 'package:flutter_filmes/movie_form_screen.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  final FilmeHelper filmeHelper = FilmeHelper();
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

  void _navigateToEditMovie(BuildContext context, Filme? filme) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MovieFormScreen(filme: filme)),
    );
    _loadFilmes(); 
  }

  void _deleteFilme(int id) async {
    bool confirmDelete = await _showDeleteConfirmation();
    if (confirmDelete) {
      await filmeHelper.deleteFilme(id);
      _loadFilmes();
    }
  }

  Future<bool> _showDeleteConfirmation() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remover Filme'),
        content: const Text('Tem certeza de que deseja remover este filme?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Remover'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filmes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _navigateToEditMovie(context, null),
          )
        ],
      ),
      body: filmes.isEmpty
          ? const Center(child: Text("Nenhum filme cadastrado"))
          : ListView.builder(
              itemCount: filmes.length,
              itemBuilder: (context, index) {
                final filme = filmes[index];
                return GestureDetector(
                  onTap: () => _navigateToEditMovie(context, filme), // Editar
                  onLongPress: () => _deleteFilme(filme.id), // Remover
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          filme.titulo,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          filme.ano.toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          filme.resumo,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
