#! /usr/bin/env bash

main() {
    files=($(find . -name "*.cpp" | sort))
    touch notes.cpp
    for file in "${files[@]}"; do
        filePretty="\
//---------------------------------\n\
//-------------${file}-------------\n\
//---------------------------------\n\n"
        printf ${filePretty} >> notes.cpp
        cat "${file}" >> notes.cpp
        printf "\n\n\n\n" >> notes.cpp
    done
}

main