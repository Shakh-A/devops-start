#!/bin/bash

# Проверка, что директория logs существует
mkdir -p logs

echo "Введите ваше имя:"
read name

greeting="Привет, $name! Сегодня $(date)"
echo $greeting

# Условие для admin
if [[ "$name" == "admin" ]]; then
    echo "Добро пожаловать, Администратор! У вас есть полный доступ."
fi

# Логирование
echo "$greeting" >> logs/greetings.log

