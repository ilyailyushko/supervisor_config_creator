#!/bin/bash

# Переменные
REPO_URL="https://github.com/USERNAME/REPOSITORY_NAME.git"
REPO_DIR="REPOSITORY_NAME"

# Клонирование репозитория
if [ -d "$REPO_DIR" ]; then
  echo "Каталог $REPO_DIR уже существует. Удаление..."
  rm -rf "$REPO_DIR"
fi

echo "Клонирование репозитория..."
git clone "$REPO_URL"

# Переход в каталог репозитория
cd "$REPO_DIR"

# Запуск основного скрипта
./create_supervisor_config.sh
