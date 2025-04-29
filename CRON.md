### Commands to add a new cronjob.
1. `crontab -e`   (e -> edit)
2. m h  dom mon dow   command ( follow this structure as mentioned in the file)
  - m -> minutes (0-59)
  - h -> hours (0-23)
  - dom -> date of month (1-31)
  - mon -> month (1-12)
  - dow -> day of week (0-6) [0->Sunday]
3. Example `0 11 * * * /usr/local/bin/universal_update_script.sh`
4. Save the file and that's it.
