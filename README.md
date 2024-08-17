# ZapToText

Este projeto contém dois scripts projetados para ajudar usuários de macOS a transcrever arquivos de áudio do WhatsApp (no formato `.ogg`) para texto usando o modelo Whisper da OpenAI. Os scripts são executados diretamente pelo terminal.

## Scripts Disponíveis

### 1. `instalar_dependencias.sh`

Este script instala todas as dependências necessárias para rodar o Whisper e transcrever áudios. Ele faz uso do Homebrew para instalar o Python3, FFmpeg, e Pipx, que são usados para gerenciar o Whisper.

**Como usar:**

1. **Baixe o script**: Certifique-se de que o arquivo `instalar_dependencias.sh` esteja na sua pasta de trabalho.
2. **Dê permissão de execução ao script**: No terminal, navegue até a pasta onde o script está localizado e execute o comando:
   ```bash
   chmod +x instalar_dependencias.sh
   ```
3. **Execute o script**:
   ```bash
   ./instalar_dependencias.sh
   ```
   Isso instalará todas as dependências necessárias para a transcrição de áudios. **Esta instalação só precisa ser realizada uma vez na máquina**. Após a instalação, você pode usar o script de transcrição quantas vezes desejar.

### 2. `zaptotext.sh`

Este script identifica todos os arquivos `.ogg` na pasta atual, transcreve o conteúdo de áudio para texto em português usando o Whisper, e junta todas as transcrições em um único arquivo de texto chamado `transcricao_completa.txt`.

**Como usar:**

1. **Baixe o script**: Certifique-se de que o arquivo `zaptotext.sh` esteja na sua pasta de trabalho.
2. **Dê permissão de execução ao script**: No terminal, navegue até a pasta onde o script está localizado e execute o comando:
   ```bash
   chmod +x zaptotext.sh
   ```
3. **Baixe os áudios do WhatsApp Web**: Abra o WhatsApp Web em seu navegador, localize os áudios que deseja transcrever, clique nos três pontos ao lado do áudio e selecione "Download". Salve os arquivos `.ogg` na mesma pasta onde o script está localizado.
4. **Execute o script**:
   ```bash
   ./zaptotext.sh
   ```
   O script processará os arquivos e criará um arquivo `transcricao_completa.txt` na mesma pasta, contendo todas as transcrições.

### 3. **Utilizando o Arquivo Transcrito**

Após a execução do script, você terá um arquivo `transcricao_completa.txt` contendo todas as transcrições. Se desejar interpretar ou obter respostas específicas do conteúdo transcrito, basta abrir o ChatGPT, anexar o arquivo `.txt` e perguntar o que deseja saber.

**Exemplo de Prompt:**
```plaintext
Olá, gostaria de entender melhor as conversas transcritas neste arquivo. Poderia me ajudar a identificar os principais tópicos discutidos, ou resumir o conteúdo das conversas?
```

## Requisitos

- macOS com Homebrew instalado.
- Acesso ao terminal para execução dos scripts.

## Observações

- Certifique-se de que os arquivos `.ogg` estão na pasta correta antes de rodar o `zaptotext.sh`.
- A instalação das dependências só precisa ser feita uma vez. Após isso, basta usar o script `zaptotext.sh` para transcrever os áudios.
- Se encontrar qualquer problema durante a execução do script de instalação, verifique se o Homebrew está corretamente instalado e atualizado.

- ## Demonstração

- https://youtu.be/QYcna7G-0cQ

