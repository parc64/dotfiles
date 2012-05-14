#!/bin/bash
uptime | awk -F'load averages: ' '{ print $2 }'
