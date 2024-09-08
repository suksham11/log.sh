#!/bin/bash


LOG_FILE="/var/log/syslog"


extract_errors() {
    echo "=== Errors ==="
    grep -i "error" "$LOG_FILE"
}


extract_warnings() {
    echo "=== Warnings ==="
    grep -i "warning" "$LOG_FILE"
}


extract_access() {
    echo "=== Access Patterns ==="
    grep -i "access" "$LOG_FILE"
}


main() {
    echo "Log Analysis Report"
    echo "==================="

    extract_errors
    extract_warnings
    extract_access

    echo "==================="
    echo "Analysis complete."
}


main
