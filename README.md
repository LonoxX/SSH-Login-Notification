# SSH-Login-Notification


Dies ist ein Shell-Skript, das bei jedem SSH-Login auf dem System ausgeführt wird. Es sendet eine Nachricht über einen Webhook an Discord / eine Telegram Nachicht,  der Informationen über den Benutzer, den Hostnamen, die IP-Adresse des Hosts und die IP-Adresse des Clients enthält, von dem aus der Login stattgefunden hat.




# Installation Discord


```sh
git clone https://github.com/LonoxX/SSH-Login-Notification.git
```

```sh
nano /etc/profile.d/discord.sh
```
Füge den Inhalt von [discord.sh](discord.sh) ein und speichere die Datei.

## Datei ausfürhbar machen
```sh
chmod +x /etc/profile.d/discord.sh
```

## Discord Webhook erstellen
[Discord Webhook erstellen](https://support.discord.com/hc/de/articles/228383668-Webhooks-erstellen)

Nachdem du einen Webhook erstellt hast, musst du nur noch die URL in der Datei [discord.sh](discord.sh) einfügen.


# Installation Telegram

```sh
git clone https://github.com/LonoxX/SSH-Login-Notification.git
```
```sh
nano /etc/profile.d/telegram.sh
```

Füge den Inhalt von [telegram.sh](telegram.sh) ein und speichere die Datei.

## Datei ausfürhbar machen
```sh
chmod +x /etc/profile.d/telegram.sh
```

# Konfiguration Telegram
## Telegram Bot erstellen
[Telegram Bot erstellen](https://core.telegram.org/bots#6-botfather)

Telegram App oder [Telegram Web](https://web.telegram.org) machen, indem du einfach nach "Botfather" suchst und einen Chat mit diesem startest. \
Sende anschließend die Nachricht "/newbot" und vergebe wie aufgefordert einen Anzeigenamen für den Bot (einfach als Nachricht senden).  
\
Danach musst du noch einen Usernamen für den Bot vergeben, der mit "bot" enden muss (z.B. meinserver_bot). 

Nachdem du den Usernamen abgesendet hast, wird der Bot erstellt und ein Token generiert. Dieses Token brauchst du im nächsten Schritt.

Zudem solltest du deinen Bot direkt in Telegram hinzufügen (den gewählten Usernamen in die Suche eingeben) und ihm eine Nachricht schreiben, das ist ebenfalls für den nächsten Schritt nötig.

## Telegram Chat ID
Um die Chat ID zu erhalten, musst du einfach eine Nachricht an deinen Bot schicken.

Nachdem du eine Nachricht an deinen Bot geschickt hast, öffne den folgenden Link in deinem Browser: https://api.telegram.org/botTOKEN/getUpdates

Ersetze TOKEN mit dem Token, den du in der vorherigen Anleitung erhalten hast.

Nachdem du den Link aufgerufen hast, solltest du eine JSON-Datei erhalten, die Informationen über deine Telegram-Nachricht enthält. Die Chat-ID ist die Nummer, die unter "chat" -> "id" steht.
Füge den Token und die Chat-ID in die Datei [telegram.sh](telegram.sh) ein.

# Support
> Webseite: [Panda-Network.de](https://panda-network.de) \
> Support [Discord-Server](https://pnnet.dev/discord)

