#!/bin/bash

# Define a pasta atual como entrada e saída
PASTA_ENTRADA=$(pwd)
ARQUIVO_SAIDA="$PASTA_ENTRADA/transcricao_completa.txt"

# Limpa o arquivo de saída se já existir
> "$ARQUIVO_SAIDA"

# Loop para cada arquivo .ogg na pasta atual
for arquivo in "$PASTA_ENTRADA"/*.ogg; do
    echo "Processando $arquivo..."

    # Transcreve o áudio para texto em português usando Whisper
    whisper "$arquivo" --model base --language Portuguese --output_format txt --output_dir "$PASTA_ENTRADA"

    # Adiciona o texto transcrito ao arquivo de saída
    arquivo_txt="${arquivo%.ogg}.txt"
    cat "$arquivo_txt" >> "$ARQUIVO_SAIDA"
    echo "" >> "$ARQUIVO_SAIDA"  # Adiciona uma linha em branco entre as transcrições

    # Remove o arquivo temporário
    rm "$arquivo_txt"
done

echo "Transcrição completa salva em $ARQUIVO_SAIDA"
