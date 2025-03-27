/* Feito por: Keren Stevaux Anastácio e Kaique Silva Primissia
2°D- DEV, prof Leandro Rosa e Vedilson Prado*/

import 'dart:io';
import 'dart:math';

class JogoTiro {
  final int largura = 20;
  late int alvo;
  int jogador1 = 5;
  int jogador2 = 15;
  int turno = 1; // 1 = jogador1, 2 = jogador2

  JogoTiro() {
    alvo = Random().nextInt(largura);
  }

  void exibirJogo() {
    for (int i = 0; i < largura; i++) {
      if (i == jogador1) {
        stdout.write('🔫');
      } else if (i == jogador2) {
        stdout.write('🔫');
      } else if (i == alvo) {
        stdout.write('🎯');
      } else {
        stdout.write('-');
      }
    }
    print('');
  }

  void moverJogador(String direcao) {
    if (turno == 1) {
      if (direcao == 'a' && jogador1 > 0) jogador1--;
      if (direcao == 'd' && jogador1 < largura - 1) jogador1++;
    } else {
      if (direcao == 'j' && jogador2 > 0) jogador2--;
      if (direcao == 'l' && jogador2 < largura - 1) jogador2++;
    }
  }

  bool atirar() {
    if ((turno == 1 && jogador1 == alvo) || (turno == 2 && jogador2 == alvo)) {
      return true;
    }
    return false;
  }

  void mudarAlvo() {
    alvo = Random().nextInt(largura);
  }

  void trocarTurno() {
    turno = (turno == 1) ? 2 : 1;
  }
}

void main() {
  JogoTiro jogo = JogoTiro();
  String? comando;

  print("\n=== JOGO DE TIRO: MODO 2 JOGADORES ===");
  print("Jogador 1 usa 'a' (esquerda), 'd' (direita), 'f' (atirar)");
  print("Jogador 2 usa 'j' (esquerda), 'l' (direita), 'k' (atirar)\n");

  while (true) {
    jogo.exibirJogo();
    stdout.write("Jogador ${jogo.turno}, seu comando: ");
    comando = stdin.readLineSync();

    if (comando == 'a' || comando == 'd' || comando == 'j' || comando == 'l') {
      jogo.moverJogador(comando!);
    } else if ((comando == 'f' && jogo.turno == 1) || (comando == 'k' && jogo.turno == 2)) {
      if (jogo.atirar()) {
        print("\n🎯 Jogador ${jogo.turno} acertou o alvo! Parabéns! 🎯\n");
        break;
      } else {
        print("\n💥 Errou! O alvo mudou de posição! 🎯\n");
        jogo.mudarAlvo();
      }
    } else {
      print("\nComando inválido! Tente novamente.\n");
      continue;
    }

    jogo.trocarTurno();
  }
}

/*Mudanças feitas:
- Agora tem dois jogadores no jogo.
- Adicionamos um comando para controlar e alternar entre os jogadores, movimentação e tiros foram ajustados para cada jogador.
- O jogo mostra os dois jogadores e deixa cada um jogar sua vez.
- Essas mudanças transformaram o jogo de um jogador só para um modo de 2 jogadores, com turnos alternados, 
movimentos específicos pra cada um e a possibilidade de atirar.*/

