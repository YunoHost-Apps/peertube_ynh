	#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Obtain the (empty string), __2, __3, cf the DB suffix in production.yaml...
db_suffix="$(echo $app | sed 's/peertube//g')"
