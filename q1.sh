#!/bin/bash
awk 'NF>2' quotes.txt | awk '!a[$0]++'
