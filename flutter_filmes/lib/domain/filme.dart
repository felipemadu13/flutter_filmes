class Filme {
  int id = 0;
  String titulo = '';
  int ano = 0;
  String direcao = '';
  String resumo = '';
  String urlCartaz = '';
  double nota = 0;

  Filme(this.titulo, this.direcao, this.ano, this.nota);

  Filme.fromMap(Map map) {
    id = map[FilmeContract.idColumn];
    titulo = map[FilmeContract.tituloColumn];
    ano = map[FilmeContract.anoColumn];
    direcao = map[FilmeContract.direcaoColumn];
    resumo = map[FilmeContract.resumoColumn];
    urlCartaz = map[FilmeContract.urlCartazColumn];
    nota = map[FilmeContract.notaColumn];
  }

  Map<String, dynamic> toMap() {
    return { 
      FilmeContract.idColumn: id,
      FilmeContract.tituloColumn: titulo,
      FilmeContract.anoColumn: ano,
      FilmeContract.direcaoColumn: direcao,
      FilmeContract.resumoColumn: resumo,
      FilmeContract.urlCartazColumn: urlCartaz,
      FilmeContract.notaColumn: nota
    };
  }

  @override
  String toString() {
    return 'Filme{id: $id, titulo: $titulo, ano: $ano, direcao: $direcao, resumo: $resumo, urlCartaz: $urlCartaz, nota: $nota}';
  }
}

abstract class FilmeContract {
  static const String filmeTable = "filme_table";
  static const String idColumn = "id";
  static const String tituloColumn = "titulo";
  static const String anoColumn = "ano";
  static const String direcaoColumn = "direcao";
  static const String resumoColumn = "resumo";
  static const String urlCartazColumn = "url_cartaz";
  static const String notaColumn = "nota";
}


