#purpose = Backup of Important Data
#Created on 18-02-2016
#Author = Abhijeet Panwar
#Version 1.0
#START

find /home/  -xdev  -type s 1>>sockets-to-exclude 2>/dev/null 

TIME=`date +%b-%d-%y`            # This Command will add date in Backup File Name.
FILENAME=backup-$TIME.tar.gz    # Here i define Backup file name format.
SRCDIR=/home                    # Location of Important Data Directory (Source of backup).
DESDIR=/opt/backup_dir            # Destination of backup file.
tar -cpzf $DESDIR/$FILENAME $SRCDIR -X sockets-to-exclude --absolute-names --exclude="*.gvfs"

#END
