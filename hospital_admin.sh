#!/bin/bash

initialize_system() {
        # Create active_logs directory
        if [ ! -d "active_logs" ]; then
                echo "Creating active_logs directory"
                mkdir -p active_logs
        else
                echo "active_logs already exists."
	fi
        #Create archived_logs directory
        if [ ! -d "archived_logs" ]; then
                echo "Creating archived_logs directory"
                mkdir -p achived_logs
        else
                echo "archived_logs directory already exists."
        fi

        #Create reports directory
        if [ ! -d "reports" ]; then
                echo "Creation reports directory"
                mkdir -p reports
        else
                echo "reports directory already exists."
        fi

        echo "System initialization complete."
 }

secure_data() {
    echo "Securing active_logs directory..."
    chmod 700 active_logs
 echo "Current permissions for active_logs:"
    ls -ld active_logs
    ls -l active_logs

   
