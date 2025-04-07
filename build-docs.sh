#!/bin/bash
set -e

# Create a directory to hold all product content
mkdir -p products
cd products

# Clone all repos
git clone https://github.com/gitmoduledemo/productA.git
git clone https://github.com/gitmoduledemo/ProductB.git
git clone https://github.com/gitmoduledemo/ProductC.git
# ... Add remaining products here

cd ..

