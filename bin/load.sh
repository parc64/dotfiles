#!/bin/bash
uptime | awk -F'load averages(s|): ' '{ print $2 }'
