#!/bin/bash


for (( l=1; l<=5; l++ )) #controlanumero delineas
do
      for (( c=1; c<=l; c++ )) #controla lo que se imprime en cada linea 
      do
          echo -n "$l"
      done
      
echo ""
done