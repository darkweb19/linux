#!/bin/bash
# COMP1030 – Lab #02
# Your Full Name
# YourFirstName_LastName_A4.sh

# Path to the car collection file
CAR_FILE="YourFirstName_LastName_car"

# Function to view the entire collection
view_collection() {
  cat "$CAR_FILE"
}

# Function to calculate and display the total cost of the collection
total_cost() {
  awk -F ";" '{sum += $4} END {print "Total Cost: $" sum}' "$CAR_FILE"
}

# Function to search for models from a particular make
search_by_make() {
  echo "Enter Make:"
  read make
  grep -i "^$make;" "$CAR_FILE" || echo "Nothing is found for the Make specified"
}

# Function to search for models by purchase date
search_by_date() {
  echo "Enter Purchase Date (e.g., Nov 15, 2024):"
  read date
  grep -i ";$date;" "$CAR_FILE" || echo "Nothing is found for the date specified"
}

# Function to confirm exit
confirm_exit() {
  echo "Are you sure you want to exit? (y/n)"
  read choice
  [[ "$choice" == "y" ]] && exit 0
}

# Menu loop
while true; do
  echo "Menu Options:"
  echo "1. View Collection"
  echo "2. View Total Cost"
  echo "3. Search by Make"
  echo "4. Search by Purchase Date"
  echo "5. Exit"
  read -p "Choose an option: " option

  case $option in
    1) view_collection ;;
    2) total_cost ;;
    3) search_by_make ;;
    4) search_by_date ;;
    5) confirm_exit ;;
    *) echo "Invalid option. Please try again." ;;
  esac
done
