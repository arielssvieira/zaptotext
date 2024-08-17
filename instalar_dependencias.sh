#!/bin/bash

# Atualiza o Homebrew e instala o Python3 e ffmpeg se não estiverem instalados
echo "Atualizando Homebrew e instalando dependências..."
brew update
brew install python3
brew install ffmpeg

# Instala o pipx se não estiver instalado
if ! command -v pipx &> /dev/null; then
    echo "Instalando pipx..."
    brew install pipx
    pipx ensurepath
fi

# Instala o Whisper usando pipx
echo "Instalando Whisper..."
pipx install openai-whisper

# Verifica se a instalação foi bem-sucedida
if command -v whisper &> /dev/null; then
    echo "Instalação concluída com sucesso!"
else
    echo "Erro durante a instalação do Whisper."
fi

