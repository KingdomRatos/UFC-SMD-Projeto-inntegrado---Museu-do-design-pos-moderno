# UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno

Equipe: Kingdom Ratos


Membros:

  Nathan Damasceno Gadelha Rocha - 497045
  
  Pedro ilan de araujo Ferreira - 497211
  
  Samuel Maia de Oliveira Evangelista - 494467
  
  Vincenzo Silva Fadda -499907
  
  Victor Lucas Livino Moreira - 475595
  
Cliente: professor Liandro Roger

Descrição: transformar a vídeo aula "05-3 Design pos-moderno exemplos (music video).mp4"(https://drive.google.com/file/d/1CFXOkeQwrRFDkwhdRS9fXRYLc9yW_wsw/view) em um museu virtual onde o usuario pode interagir pode interagir com objetos, ver produtos de design dos especialistas apresentados e um pouco mais de informação. na aplicação também existem pequenos desafios abordando o tema apresentado. o projeto utiliza o motor de jogos "Godot" para seu desenvolvimento.
obs: para o executável funcionar, é necessário que o arquivo .pck esteja na mesma pasta, isso é padrão do próprio godot.

link de download alternativo para pasta BIN com a demo .EXE do projeto: https://drive.google.com/file/d/1lmxr1KVG8peapWo6L6r_X_O_fXcitq5A/view?usp=sharing

link para o protótipo do jogo online: https://nathandgr.itch.io/demo-museu-do-design-ps-moderno

arquivos de código (modificados de .gd para .txt porque o read.md não tem suporte a .gd)

Mapeamento de funcionalidades
|  Código               |  Funcionalidade                |                    Codificação                  |
| :---                 |            :---:                |                           ---:                  |  
| Cód. RF 0001        |     Iniciar o jogo               |       arquivo ”button.gd” - linhas 14 a 15      |
|Cód. RF 0002 | Movimentar Personagem    |arquivo ”player.gd” - linhas 14 a 47  |   
|Cód. RF 0003   |  Interagir com objetos ao apertar espaço    |   arquivo ”NPC.gd” - todo o códigoarquivo ”NPCQuiz.gd” - todo o código         |
|Cód. RF 0004    |   dentificar colisão com objetos e paredes |arquivo”player.gd” - linha 47 |
|Cód. RF 0005|Mostrar tela do quiz|arquivo ”NPCQuiz.gd” linhas 13 a 18|
|Cód. RF 0006|Verificar se a resposta fornecida é a correta e gerar pontuação do quiz|arquivo ”Quiz.gd” linhas 57 a 98|
|Cód. RF 0007|Interagir com interface do cartaz de sala utilizando o mouse |arquivo”control.gd” - linhas 15 a 19|
|Cód. RF 0008|Trocar de sala ao clicar nas opções oferecidas de sala|arquivo ”andares.gd” linhas 10 a 40|
|Cód. RF 0009|transportar o jogador para a sala escolhida|arquivo ”andares.gd” linhas 16 a 40|
|Cód. RF 0010|Sair do cartaz ao clicar na opção voltar|arquivo ”andares.gd” linhas 10 a 14|
|Cód. RF 0011|interagir com quadros expostos no museu e exibir os quadros com suas informações|arquivo “quadroSeymour.gd” linhas 36 a 45arquivo “quadro.gd” linhas 13 a 21arquivo “quadro2.gd” linhas 13 a 21|
|Cód. RF 0012|Mostrar botões de controle dos quadros|arquivo “quadroSeymour.gd” linhas 41 a 43|
|Cód. RF 0013|Clicar no botão de próximo quadro e mudar para o próximo quadro|arquivo”control.gd” - linhas 34 a 54 arquivo”quadroSeymour.gd” linhas 18 a 22|
|Cód. RF 0014|Clicar no botão de quadro anterior e mudar para o quadro anterior|arquivo”control.gd” - linhas 56 a 77arquivo”quadroSeymour.gd” linhas 23 a 33|
|Cód. RF 0015|Clicar no botão de voltar e fechar a tela de quadros|arquivo”control.gd” - linhas 79 a 87|
|Cód. RF 0016|Clicar no botão de volume e mostrar controle de volume|arquivo”control.gd” - linhas 21 a 28|
|Cód. RF 0017|Controlar o volume do jogo ao deslizar o slider de controle|arquivo”HScrollbar.gd” linhas 19 a 21|
|Cód. RF 0018|clicar no botão de fechar controle de som, fechar a tela de controle de som e mostrar ícone de configuração de som|arquivo”control.gd” - linhas 21 a 24 e 31 a 32|










[andares.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850520/andares.txt)

[Button.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850521/Button.txt)

[Control.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850522/Control.txt)

[HScrollBar.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850523/HScrollBar.txt)

[NPC.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850524/NPC.txt)

[NPC3.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850525/NPC3.txt)

[NPCPushPin.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850526/NPCPushPin.txt)

[NPCQuiz.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850527/NPCQuiz.txt)

[Player.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850528/Player.txt)

[quadro.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850529/quadro.txt)

[quadro2.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850530/quadro2.txt)

[quadroSeymour.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850531/quadroSeymour.txt)

[Quiz.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850532/Quiz.txt)

[somicone.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850533/somicone.txt)

[SoundButton.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850534/SoundButton.txt)

[Voltar.txt](https://github.com/KingdomRatos/UFC-SMD-Projeto-inntegrado---Museu-do-design-pos-moderno/files/7850535/Voltar.txt)








