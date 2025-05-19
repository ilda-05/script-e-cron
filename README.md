# script-e-cron

### Come prima cosa vado a creare uno script bash

Nello script bash andiamo a scrivere uno script che andrà a creare
un file per settimana e dentro la cartella per settimana andrà a creare una 
cartella per giorno

poi andiamo a salvare lo script in una directory

dopo aggiungiamo i permessi di esecuzione allo script bash con :

~~~
chmod +x /home/ilda/backup.sh
~~~

### Aggiungiamo lo script alla crontab

Eseguiamo il comando crontab -e, che andrà ad aprire il file di configurazione per la schedulazione delle attività da eseguire con un editor come nano o vimo

e inseriamo il comando : 

~~~
0 1 * * * /home/ilda/backup.sh
~~~

così andrà ad eseguire lo script backup.sh ogni giorno all'ora 01:00

facendo così avremmo una cartella in opt/backup/ per ogni settimana, e dentro avrello altre cartelle per ogni giorno dove ci saranno i backup 