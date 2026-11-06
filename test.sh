#!/bin/bash

grep -q "# DevSecOps Lab" README.md

if [ $? -eq 0 ]; then
   echo "Teste passou!"
else
   echo "Teste falhou!"
   exit 1
fi
