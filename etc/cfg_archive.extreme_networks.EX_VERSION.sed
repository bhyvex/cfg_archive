############ Dont change the following ##############

# Delete the first line with the command name
1d
# Delete the last line. Removes any final CLI prompts
$d

# Delete lines with the the text defined between the /<deletethistext>/
/^Switch/d
/^XGM2-1/d
/^BootROM/d
/^\s+/d
#/ntp clock-period/d
#/Uptime /d
#/Time since/d
#/System restarted/d

# Delete Returns
s/\r//g

# Delete the clipaging commands at the top and/or bottom.
/ # disable clipaging/d
/ # enable clipaging/d

# remove status messages from UCS 'show system firmware expand' command
#/-Status:/d

# Delete from the word end to the end of the actual file, strips off extra crap
/ # enable clipaging/,/G/ {
  / # enable clipaging/p;
  d;
}


