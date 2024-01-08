#!/bin/bash
mkdir -p /root/cuarentena

find / -type f -exec grep -l "*Hack*" {} \; -exec mv {} /root/cuarentena/ \;
