# Percorso da backuppare
HOME_DIR="/home/ilda"

# Cartella base backup
BACKUP_BASE="/opt/backup"

# Numero settimana ISO (01-53)
WEEK=$(date +%V)

# Data corrente (YYYY-MM-DD)
DATE=$(date +%Y-%m-%d)

# Cartella backup settimanale
WEEK_DIR="$BACKUP_BASE/backup_della_settimana_$WEEK"

# Crea la cartella settimanale se non esiste
mkdir -p "$WEEK_DIR"

# Nome file di backup
BACKUP_FILE="$WEEK_DIR/backup_del_giorno_$DATE.tar.gz"

# Crea l’archivio compresso
tar -czf "$BACKUP_FILE" "$HOME_DIR"
