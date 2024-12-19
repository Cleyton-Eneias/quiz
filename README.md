# Quiz App

Um aplicativo de quiz desenvolvido em Flutter, com temas variados como "Geral", "Esportes", "Bíblico", "Geografia" e "História". O aplicativo permite aos usuários testar seus conhecimentos em diferentes áreas, com perguntas e respostas interativas. 

## Descrição

Este aplicativo permite ao usuário escolher entre diferentes categorias de quizzes e responder a perguntas sobre o tema selecionado. As perguntas são compostas por uma pergunta e quatro opções de resposta, e o aplicativo verifica se a resposta escolhida está correta ou não. Ao final do quiz, o usuário recebe o resultado, mostrando o número de acertos e erros.

### Funcionalidades:
- **Vários temas de quiz:** O usuário pode escolher entre diferentes categorias de perguntas: Geral, Esportes, Bíblico, Geografia e História.
- **Contagem de acertos e erros:** Ao final do quiz, o número de respostas corretas e erradas é exibido.
- **Interface responsiva:** A interface foi construída de maneira a ser responsiva em diferentes dispositivos móveis.
- **Design interativo e moderno:** O design utiliza fontes e imagens personalizadas para tornar a experiência mais agradável.

## Tecnologias

- **Flutter:** Framework para desenvolvimento de aplicativos móveis.
- **Dart:** Linguagem de programação utilizada no desenvolvimento do aplicativo.

## Como Rodar o Projeto

### Pré-requisitos

Antes de rodar o projeto, verifique se você possui o ambiente de desenvolvimento Flutter configurado em sua máquina.

1. **Instalar o Flutter:**
   - Siga as instruções oficiais para instalar o Flutter em sua máquina: [Instalação do Flutter](https://flutter.dev/docs/get-started/install).

2. **Instalar o Android Studio:**
   - Para emular e testar o aplicativo, é necessário ter o Android Studio instalado. Baixe-o aqui: [Android Studio](https://developer.android.com/studio).

3. **Verificar se o Flutter está instalado corretamente:**
   - Execute o comando abaixo para verificar se o Flutter está instalado corretamente:
     ```bash
     flutter doctor
     ```

### Passos para rodar o projeto

1. **Clone o repositório:**
   - Clone o repositório em sua máquina local usando o seguinte comando:
     ```bash
     git clone https://github.com/seu-usuario/quiz-app.git
     ```

2. **Instale as dependências:**
   - Navegue até o diretório do projeto e execute:
     ```bash
     cd quiz-app
     flutter pub get
     ```

3. **Execute o aplicativo:**
   - Execute o aplicativo em um emulador ou dispositivo conectado usando o comando:
     ```bash
     flutter run
     ```


### Descrição dos arquivos principais:

- **lib/main.dart:** Arquivo principal onde o `MaterialApp` é inicializado e as rotas para as diferentes páginas de quiz são configuradas.
- **lib/paginainicial.dart:** Tela inicial onde o usuário escolhe o tema do quiz.
- **lib/quizAll/quizall.dart:** Tela do quiz com perguntas gerais.
- **lib/quizFut/quizfut.dart:** Tela do quiz com perguntas sobre esportes.
- **lib/quizGeo/quizgeo.dart:** Tela do quiz com perguntas sobre geografia.
- **lib/quizHis/quizhis.dart:** Tela do quiz com perguntas sobre história.
- **lib/quizBib/quiz.dart:** Tela do quiz com perguntas bíblicas.

## Como Funciona

1. **Tela Inicial (PaginaInicial):**
   - Ao iniciar o aplicativo, o usuário é levado à tela inicial onde pode escolher o tema do quiz clicando em botões com imagens representativas de cada categoria.
   
2. **Quiz:**
   - Após escolher um tema, o usuário é levado para a tela do quiz, onde verá uma pergunta com quatro alternativas de resposta. Ele deve escolher a resposta correta e o aplicativo indica se ele acertou ou errou.

3. **Resultado:**
   - Ao final do quiz, o usuário é redirecionado para a tela de resultados, onde verá o número de acertos e erros.

4. **Navegação:**
   - O aplicativo utiliza o sistema de navegação do Flutter com `Navigator.pushNamed` para alternar entre as diferentes telas de quiz e a tela de resultados.

## Contribuições

Sinta-se à vontade para fazer contribuições! Para isso, siga estas etapas:

1. Faça um fork deste repositório.
2. Crie uma branch para a sua modificação (`git checkout -b feature/xyz`).
3. Faça suas alterações e commit (`git commit -m 'Adicionando novo recurso'`).
4. Envie sua branch para o repositório remoto (`git push origin feature/xyz`).
5. Abra um pull request.



