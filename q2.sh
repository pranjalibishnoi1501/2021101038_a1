#!/bin/bash
awk -F~ ' NF { print $2 " " "once said, \""$1"\"" }' quotes.txt > speech.txt
