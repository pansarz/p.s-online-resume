#!/bin/bash

ruby scripts/yaml_to_md.rb
pandoc print.md -o resume.pdf
