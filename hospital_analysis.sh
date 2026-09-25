#!/bin/bash 
water_audit(){  
  awk '
    /ICU_WATER_RESERVE/ {
        sum += $NF  # Assumes the number is the last item on the line
        count++
    }
    END {
        if (count > 0) {
            printf "ICU WATER AUDIT SUMMARY\n"
            printf "Total Logs Read:%d\n", count
            printf "Average Usage: %.2f units\n", (sum / count)
        } else {
            print "No data found for ICU_WATER_RESERVE."
        }
    }' active_logs/*
              }

water_audit

