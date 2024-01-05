#!/bin/bash
contador=5
while [[ $contador -ge 1 ]]; do
  echo -n "$contador,"
  ((contador--))
done