#!/bin/bash
# Requires the google-translate Ruby Gem (https://github.com/shvets/google-translate)
# "translate list" outputs:
#     From Languages:
#     (af: Afrikans), (sq: Albanian), (ar: Arabic), ...
#     To Languages:
#     (af: Afrikans), (sq: Albanian), (ar: Arabic), ...
# Convert that to a list of just the unique language codes - one per line.
translate list | grep 'en: English' | sed 's/, /\n/g' | sed 's/^(\(.*\):.*$/\1/g' | sort -u
