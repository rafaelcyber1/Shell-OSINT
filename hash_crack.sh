#!/bin/bash

echo "+---------------------------+"
echo "| instagram: @rafael_cyber1 |"
echo "|----hash_crack.sh V.1.0----|"
echo "+---------------------------+"

# Caminho para a wordlist
wordlist="wordlists/pass.txt"

###############MD5

# Verifica se o primeiro argumento fornecido ao script é "-md5"
if [ "$1" == "-md5" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que seria gerada
    hashed_word=$(echo -n "$word" | md5sum | awk '{print $1}')
    
# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"
      
# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############SHA1

# Verifica se o primeiro argumento fornecido ao script é "-sha1"
elif [ "$1" == "-sha1" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que seria gerada
    hashed_word=$(echo -n "$word" | sha1sum | awk '{print $1}')

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"
###############SHA224

# Verifica se o primeiro argumento fornecido ao script é "-sha224"
elif [ "$1" == "-sha224" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que seria gerada
    hashed_word=$(echo -n "$word" | sha224sum | awk '{print $1}')

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############SHA3-224

# Verifica se o primeiro argumento fornecido ao script é "-sha3-224"
elif [ "$1" == "-sha3-224" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -sha3-224 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############SHA256

# Verifica se o primeiro argumento fornecido ao script é "-sha256"
elif [ "$1" == "-sha256" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que seria gerada
    hashed_word=$(echo -n "$word" | sha256sum | awk '{print $1}')

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"
###############SHA3-256

# Verifica se o primeiro argumento fornecido ao script é "-sha3-256"
elif [ "$1" == "-sha3-256" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -sha3-256 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############SHA384

# Verifica se o primeiro argumento fornecido ao script é "-sha384"
elif [ "$1" == "-sha384" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que seria gerada
    hashed_word=$(echo -n "$word" | sha384sum | awk '{print $1}')

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"
###############SHA3-384

# Verifica se o primeiro argumento fornecido ao script é "-sha3-384"
elif [ "$1" == "-sha3-384" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -sha3-384 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############SHA512

# Verifica se o primeiro argumento fornecido ao script é "-sha512"
elif [ "$1" == "-sha512" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que seria gerada
    hashed_word=$(echo -n "$word" | sha512sum | awk '{print $1}')

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"
###############SHA3-512

# Verifica se o primeiro argumento fornecido ao script é "-sha3-512"
elif [ "$1" == "-sha3-512" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -sha3-512 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"
###############SHA12-224

# Verifica se o primeiro argumento fornecido ao script é "-sha512-224"
elif [ "$1" == "-sha512-224" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -sha512-224 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"
###############SHA512-256

# Verifica se o primeiro argumento fornecido ao script é "-sha512-256"
elif [ "$1" == "-sha512-256" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -sha512-256 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############B2

# Verifica se o primeiro argumento fornecido ao script é "-b2"
elif [ "$1" == "-b2" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que seria gerada
    hashed_word=$(echo -n "$word" | b2sum | awk '{print $1}')

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"
###############RMD160

# Verifica se o primeiro argumento fornecido ao script é "-rmd160"
elif [ "$1" == "-rmd160" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -rmd160 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############SM3

# Verifica se o primeiro argumento fornecido ao script é "-sm3"
elif [ "$1" == "-sm3" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -sm3 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############BLAKE2S256

# Verifica se o primeiro argumento fornecido ao script é "-blake2s256"
elif [ "$1" == "-blake2s256" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -blake2s256 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

##############BLAKE2B512

# Verifica se o primeiro argumento fornecido ao script é "-blake2b512"
elif [ "$1" == "-blake2b512" ]; then
  # O segundo argumento é o hash que queremos tentar quebrar
  hash=$2

# Cada linha será comparada com o hash fornecido
  while IFS= read -r word; do # Inicia o loop
# echo -n remove a quebra de linha do final da palavra
# O awk '{print $1}' pega apenas o hash, descartando a parte do nome do arquivo que siria gerada
    hashed_word=$(echo -n "$word" | openssl dgst -blake2b512 | awk '{print $2}')
# o openssl retorna algo como MD4(stdin)= <hash>. O awk '{print $2}' pega o hash gerado.

# Compara o hash gerado com o hash fornecido
    if [ "$hashed_word" == "$hash" ]; then
# Imprime a senha que corresponde ao hash fornecido
      echo "Cracked Hash: $word"

# Sai do loop, pois já encontramos a senha
      break
    fi
  done < "$wordlist"

###############HELP

elif [ "$1" == "-h" ]; then
  echo "+------------------------------------------------------------+"
  echo "| hash_crack.sh: [Argument] [Hash here]: -md5, -sha1         |"
  echo "| -sha224, -sha3-224, -sha256, -sha3-256, -sha384, -sha3-384 |"
  echo "| -sha512, -sha3-512, -sha512-224, -sha512-256, -b2, -rmd160 |"
  echo "| -sm3, -blake2s256, -blake2b512.                            |"
  echo "+------------------------------------------------------------+"
fi
