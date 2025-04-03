/*
Feito por: Keren Stevaux Anastácio e Kaique Silva Primissia
2°D- DEV, prof Leandro Rosa e Vedilson Prado

 Descrição das Alterações
O jogo agora suporta dois jogadores.
Cada jogador tem comandos específicos para movimentação e tiro:
Jogador 1: Usa "a" (esquerda), "d" (direita) e "f" (atirar).
Jogador 2: Usa "j" (esquerda), "l" (direita) e "k" (atirar).
O jogo agora alterna entre os turnos dos jogadores após cada ação.
Se um jogador acertar o alvo, o jogo termina e ele vence.
Se errar, o alvo muda de posição para tornar o jogo mais desafiador.
O jogo exibe a posição de ambos os jogadores e do alvo a cada rodada.


Funcionalidades Implementadas
Cada jogador controla sua posição independentemente.
O jogo alterna entre Jogador 1 e Jogador 2.
Se acertar, o jogo termina; se errar, o alvo muda de posição.
Mantém a dinâmica do jogo e aumenta o desafio.
Informa de quem é a vez e se o tiro acertou ou não. */

import 'dart:io';
import 'dart:math';

class JogoTiro {
  final int largura = 20;
  late int alvo;
  int jogador1 = 5;
  int jogador2 = 15;
  int turno = 1; // 1 = jogador1, 2 = jogador2

  // Construtor que inicializa o alvo em uma posição aleatória
  JogoTiro() {
    alvo = Random().nextInt(largura);
  }

  // Método para exibir o estado atual do jogo
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

  // Método para mover os jogadores com base na direção fornecida
  void moverJogador(String direcao) {
    if (turno == 1) {
      if (direcao == 'a' && jogador1 > 0) jogador1--;
      if (direcao == 'd' && jogador1 < largura - 1) jogador1++;
    } else {
      if (direcao == 'j' && jogador2 > 0) jogador2--;
      if (direcao == 'l' && jogador2 < largura - 1) jogador2++;
    }
  }

  // Método para verificar se o jogador atual acertou o alvo
  bool atirar() {
    if ((turno == 1 && jogador1 == alvo) || (turno == 2 && jogador2 == alvo)) {
      return true;
    }
    return false;
  }

  // Método para mudar a posição do alvo para uma nova posição aleatória
  void mudarAlvo() {
    alvo = Random().nextInt(largura);
  }

  // Método para trocar o turno entre os jogadores
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

/*
Mudanças feitas:
Agora tem dois jogadores no jogo.
Adicionamos um comando para controlar e alternar entre os jogadores, movimentação e tiros foram ajustados para cada jogador.
O jogo mostra os dois jogadores e deixa cada um jogar sua vez.
Essas mudanças transformaram o jogo de um jogador só para um modo de 2 jogadores, com turnos alternados,
  movimentos específicos pra cada um e a possibilidade de atirar.
*/