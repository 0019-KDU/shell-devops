#!/bin/bash

# Define an array of URLs to check response time
URLS=("https://www.devopsshack.com/" "https://www.linkedin.com")

# Check HTTP response time for multiple URLs
for url in "${URLS[@]}"; do
    # Use curl to measure response time without downloading content
    response_time=$(curl -o /dev/null -s -w "%{time_total}\n" "$url")

    # Print the response time for each URL
    echo "Response time for $url: $response_time seconds"
done
