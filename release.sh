#!/bin/bash
bundle exec jekyll build
ssh rcat "rm -rf /wars/site/mirror/*"
scp -r _site/* rcat:/wars/site/mirror/
