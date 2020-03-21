import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter_test/flutter_test.dart';

main(List<String> args) {
  group('tabuleiro', () {
    test('ganhar o jogo', () {
      Tabuleiro tabuleiro = Tabuleiro(
        linhas: 2,
        colunas: 2,
        qtdeBombas: 0,
      );

      tabuleiro.campos[0].minar();
      tabuleiro.campos[3].minar();

      //jogando..
      tabuleiro.campos[0].alternarMarcacao();
      tabuleiro.campos[1].abrir();
      tabuleiro.campos[2].abrir();
      tabuleiro.campos[3].alternarMarcacao();

      expect(tabuleiro.resolvido, isTrue);
    });
  });
}
