#!/bin/bash

if [ "$#" -ne 1 ] || [ "$1" == "--help" ]; then 
        echo "      delet all object in kubernetes"
	echo "      Try:  ./kubectl-delete-all.sh [object] -> pod, service, etc..."
	exit
fi

object="$1"

kubectl get "${object}s" | tail -n +2 | cut -f1 -d" " |xargs kubectl delete "$object"
