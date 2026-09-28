# ⚡ LNS PRO • XHTTP

O LNS PRO agora inclui um módulo separado para VLESS + XHTTP usando Xray-core.

## Instalação

Depois de instalar o LNS PRO:

```bash
xhttp-manager setup
```

O assistente pede domínio, porta, path e certificado TLS (opcional para o primeiro teste).

## Comandos

```bash
xhttp-manager install
xhttp-manager setup
xhttp-manager add usuario 30
xhttp-manager list
xhttp-manager del usuario
xhttp-manager info
xhttp-manager restart
```

Os usuários ficam em `/etc/SSHPlus/xhttp/users.db` e a configuração em `/etc/SSHPlus/xhttp/config.json`.

O serviço usa `xray-core` isolado do `v2ray-util` legado, em `xray-xhttp.service`.

## Bot Telegram

O menu principal recebeu `⚡ XHTTP`, com teste e compra. O pagamento XHTTP usa os mesmos planos do bot, mas a criação da conta é feita pelo `xhttp-manager`.

O bot lê os dados sensíveis de `/etc/SSHPlus/bot.conf`.
