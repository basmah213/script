#!/bin/bash
# Suma con for
suma=0
for i in {1..1000}; do
    suma=$((suma + i))
done
echo "Suma con for: $suma"

# Suma con while
suma=0
i=1
while [ $i -le 1000 ]; do 
      suma=$((suma + i))
      i=$((i + 1))
done
echo "Suma con while: $suma"

# Suma con util
suma=0
i=1
util [ $i -gt 1000 ]; do 
     suma=$((suma + i))
     i=$((i + 1))
done
echo "Suma con util: $suma"

