#!/bin/bash

# System Monitoring Script for Memory and Process Usage
# Author: Chiradev
# Version: 1.0

# Display the top 10 processes sorted by memory usage
ps aux --sort=-%mem | head -n 10
