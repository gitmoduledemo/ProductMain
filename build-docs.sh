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
# Stage built content
git config --global user.email "amandeep.talwar@gmail.com"
git config --global user.name "Aman Talwar"

git add source/
git commit -m "Add updated product docs"
git push origin main
