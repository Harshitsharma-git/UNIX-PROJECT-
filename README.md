UNIX Menu Driven Login Greeting Script
Project Overview

This project is a simple shell script that displays a welcome message and system information whenever a user logs in or runs the script.
It uses a menu-driven approach so the user can choose what information to view, such as date, logged-in users, disk usage, and system uptime.
All details are also saved to a text file for reference.

Objective

The main aim of this project is to understand the use of basic UNIX commands and shell scripting concepts like loops, case statements, and file handling.
It also helps in learning how to automate system tasks using Bash scripting.

Features

Displays a personalized welcome message with current date and time

Shows number of logged-in users

Displays disk usage of the root partition

Shows system uptime

Saves output in a text file (system_info.txt)

Option to clear or display the contents of the file

Simple and easy-to-use menu system

Files in the Project

menu_greeting.sh	Main shell script (menu-driven program)
system_info.txt	Output file that stores system information
README.md	Description of the project

How the Script Works

When the script starts, it greets the user with their name and current date/time.

A menu appears with options to view system information.

The user selects an option (1–7).

The selected command runs, and the output is shown on the screen as well as saved in the text file.

The user can view or clear the file any time through the menu.

The program runs in a loop until the user chooses to exit.

Commands Used

whoami, date, who, wc -l, df -h, awk, uptime -p, and tee

Author

Name: Harshit Sharma
Course: B.Tech (CSE – AI & ML)
Subject: UNIX and Shell Programming
College Project – Semester Project
