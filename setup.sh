#!/bin/bash

# Aggiorna l'indice dei pacchetti e installa i prerequisiti
sudo apt install -y raspotify

# Installa e configura RaspberryCast
git clone https://github.com/vincelwt/RaspberryCast.git
cd RaspberryCast
npm install
sudo npm link

# Configura e avvia il servizio RaspberryCast
sudo systemctl enable raspberrycast
sudo systemctl start raspberrycast

# Installa e configura AlexaPi
git clone https://github.com/alexa-pi/AlexaPi.git
cd AlexaPi
./setup.sh

# Abilita il servizio AlexaPi
sudo systemctl enable AlexaPi.service
sudo systemctl start AlexaPi.service

# Aggiungi altri comandi o configurazioni se necessario

# Fine dello script
echo "Configurazione completata!"
