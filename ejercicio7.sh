#!/bin/bash
if[ -z "$1" ]; then
   echo "Uso: $0 <directorio>"
   exit 1
fi
fecha=$(date +%F)
tar -czf "${fecha}_$1.tar.gz" "$1"

