#!/bin/bash
[[ $(screen -list| grep -c 'bot_teste') == '0' ]] && {
    clear
    echo -e "\E[44;1;37m     ATIVAÇÃO BOT SSH     \E[0m"
    echo ""

    echo -ne "\n\033[1;32mTOKEN DO BOT:\033[1;37m "
    read token

    clear
    echo -ne "\033[1;32mMENSAGEM DE BOAS-VINDAS:\033[1;37m "
    read bvindo
    echo -ne "\033[1;32mMENSAGEM FINAL:\033[1;37m "
    read mfinal
    echo -ne "\033[1;32mBOTÃO 1:\033[1;37m "
    read bt1
    echo -ne "\033[1;32mBOTÃO 2:\033[1;37m "
    read bt2

    clear
    mkdir -p $HOME/BOT
    cd $HOME/BOT
    wget -qO ShellBot.sh https://raw.githubusercontent.com/Luciliosantos/SSHPLUS/main/Sistema/ShellBot.sh
    wget -qO botssh https://raw.githubusercontent.com/Luciliosantos/SSHPLUS/main/Sistema/botssh
    chmod +x ShellBot.sh botssh

    sed -i "s|BEM_VINDO|$bvindo|g" botssh
    sed -i "s|MSG_FINAL|$mfinal|g" botssh
    sed -i "s|BT_INF01|$bt1|g" botssh
    sed -i "s|INF02_BT|$bt2|g" botssh

    screen -dmS bot_teste bash -c "while true; do bash botssh $token; sleep 3; done"
    sleep 2
    clear
    echo "✅ BOT ATIVADO! Use /start no Telegram"
    menu
} || {
    screen -S bot_teste -X quit 2>/dev/null
    clear
    echo "❌ BOT DESATIVADO"
    menu
}
