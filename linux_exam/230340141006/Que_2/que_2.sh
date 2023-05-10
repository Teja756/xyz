#!/bin/bash

# Function to calculate the average memory utilization
calculate_average_utilization() {
  total_utilization=$((P1 + P2 + P3 + P4))
  average_utilization=$((total_utilization / 4))
  echo $average_utilization
}

# Prompt the user to enter memory utilization for each process
read -p "Enter memory utilization for process P1: " P1
read -p "Enter memory utilization for process P2: " P2
read -p "Enter memory utilization for process P3: " P3
read -p "Enter memory utilization for process P4: " P4

# Calculate the average memory utilization
average_utilization=$(calculate_average_utilization)

# Determine the system status based on the average utilization
if ((average_utilization <= 25)); then
  echo "The system is running OK"
elif ((average_utilization <= 50)); then
  echo "The system load is average"
elif ((average_utilization <= 75)); then
  echo "Memory is getting used more than expected, initiate investigation."
else
  echo "Design the new architecture and work on code optimization."
fi
