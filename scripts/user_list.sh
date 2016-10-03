#!/bin/bash
# Print dates, list of users and up time of system
echo -e "\nSystem Date: $(date)"
echo -e "\nList of users:"
who
echo -e "\nSystem Updatetime: $(uptime)\n"

