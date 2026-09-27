#!/bin/bash 
<<<<<<< HEAD
water_audit() {
    awk '
=======

process_vitals(){
  grep "CRITICAL" active_logs/heart_rate.log active_logs/temperature.log | \
  awk '
    {
        print $1, $2, $NF > "reports/critical_alerts.txt"
    }
    END {
        print "Critical alerts written to reports/critical_alerts.txt"
    }'
}

process_vitals

water_audit(){  
  awk '
>>>>>>> master
    /ICU_WATER_RESERVE/ {
        sum += $NF  # Assumes the number is the last item on the line
        count++
    }
    END {
<<<<<<< HEAD
        if (count > 0){
            printf "   ICU WATER AUDIT SUMMARY\n"
            printf "Total Logs Read:  %d\n", count
            printf "Average Usage:    %.2f units\n", (sum / count)
=======
        if (count > 0) {
            printf "ICU WATER AUDIT SUMMARY\n"
            printf "Total Logs Read:%d\n", count
            printf "Average Usage: %.2f units\n", (sum / count)
>>>>>>> master
        } else {
            print "No data found for ICU_WATER_RESERVE."
        }
    }' active_logs/*
<<<<<<< HEAD
      }
water_audit
=======
              }

water_audit
>>>>>>> master
