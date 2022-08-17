#!/bin/bash

HOUR=$(date +%H)
MINUTE=$(date +%M)

# If para definir período
if [ "$HOUR" -ge 06 -a $HOUR -lt 12 ]
then
        echo "Bom dia!"
elif [ "$HOUR" -ge 12 -a $HOUR -lt 18 ]
then
        echo "Boa tarde!"
else
        echo "Boa noite!"
fi

# If para definir AM/PM
if [ $HOUR -ge 12 ]
then
        AMPM=PM
else
        AMPM=AM
fi

# If para reduzir a hora
if [ $HOUR -gt 12 ]
then
        HOUR=$(expr $HOUR - 12)
fi

echo
echo "A hora atual é: $HOUR:$MINUTE $AMPM"
