#!/bin/bash

# Function to convert decimal to binary
decimal_to_binary() {
    decimal=$1
    binary=$(echo "obase=2; $decimal" | bc)
    echo "Binary: $binary"
}

# Function to convert decimal to hexadecimal
decimal_to_hexadecimal() {
    decimal=$1
    hexadecimal=$(echo "obase=16; $decimal" | bc)
    echo "Hexadecimal: $hexadecimal"
}

# Function to convert decimal to octal
decimal_to_octal() {
    decimal=$1
    octal=$(echo "obase=8; $decimal" | bc)
    echo "Octal: $octal"
}

# Function to convert binary to decimal
binary_to_decimal() {
    binary=$1
    decimal=$(echo "ibase=2; $binary" | bc)
    echo "Decimal: $decimal"
}

# Function to convert binary to hexadecimal
binary_to_hexadecimal() {
    binary=$1
    decimal=$(echo "ibase=2; $binary" | bc)
    hexadecimal=$(echo "obase=16; $decimal" | bc)
    echo "Hexadecimal: $hexadecimal"
}

# Function to convert binary to octal
binary_to_octal() {
    binary=$1
    decimal=$(echo "ibase=2; $binary" | bc)
    octal=$(echo "obase=8; $decimal" | bc)
    echo "Octal: $octal"
}

# Function to convert hexadecimal to decimal
hexadecimal_to_decimal() {
    hexadecimal=$1
    decimal=$(echo "ibase=16; $hexadecimal" | bc)
    echo "Decimal: $decimal"
}

# Function to convert hexadecimal to binary
hexadecimal_to_binary() {
    hexadecimal=$1
    decimal=$(echo "ibase=16; $hexadecimal" | bc)
    binary=$(echo "obase=2; $decimal" | bc)
    echo "Binary: $binary"
}

# Function to convert hexadecimal to octal
hexadecimal_to_octal() {
    hexadecimal=$1
    decimal=$(echo "ibase=16; $hexadecimal" | bc)
    octal=$(echo "obase=8; $decimal" | bc)
    echo "Octal: $octal"
}

# Function to convert octal to decimal
octal_to_decimal() {
    octal=$1
    decimal=$(echo "ibase=8; $octal" | bc)
    echo "Decimal: $decimal"
}

# Function to convert octal to binary
octal_to_binary() {
    octal=$1
    decimal=$(echo "ibase=8; $octal" | bc)
    binary=$(echo "obase=2; $decimal" | bc)
    echo "Binary: $binary"
}

# Function to convert octal to hexadecimal
octal_to_hexadecimal() {
    octal=$1
    decimal=$(echo "ibase=8; $octal" | bc)
    hexadecimal=$(echo "obase=16; $decimal" | bc)
    echo "Hexadecimal: $hexadecimal"
}

# Main program

while true; do
    echo "Number Converter"
    echo "1. Decimal to Binary"
    echo "2. Decimal to Hexadecimal"
    echo "3. Decimal to Octal"
    echo "4. Binary to Decimal"
    echo "5. Binary to Hexadecimal"
    echo "6. Binary to Octal"
    echo "7. Hexadecimal to Decimal"
    echo "8. Hexadecimal to Binary"
    echo "9. Hexadecimal to Octal"
    echo "10. Octal to Decimal"
    echo "11. Octal to Binary"
    echo "12. Octal to Hexadecimal"
    echo "0. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter decimal number: " decimal
            decimal_to_binary $decimal
            ;;
        2)
            read -p "Enter decimal number: " decimal
            decimal_to_hexadecimal $decimal
            ;;
        3)
            read -p "Enter decimal number: " decimal
            decimal_to_octal $decimal
            ;;
        4)
            read -p "Enter binary number: " binary
            binary_to_decimal $binary
            ;;
        5)
            read -p "Enter binary number: " binary
            binary_to_hexadecimal $binary
            ;;
        6)
            read -p "Enter binary number: " binary
            binary_to_octal $binary
            ;;
        7)
            read -p "Enter hexadecimal number: " hexadecimal
            hexadecimal_to_decimal $hexadecimal
            ;;
        8)
            read -p "Enter hexadecimalnumber: " hexadecimal
            hexadecimal_to_binary $hexadecimal
            ;;
        9)
            read -p "Enter hexadecimal number: " hexadecimal
            hexadecimal_to_octal $hexadecimal
            ;;
        10)
            read -p "Enter octal number: " octal
            octal_to_decimal $octal
            ;;
        11)
            read -p "Enter octal number: " octal
            octal_to_binary $octal
            ;;
        12)
            read -p "Enter octal number: " octal
            octal_to_hexadecimal $octal
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
done
