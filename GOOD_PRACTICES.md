1. Move the scripts to a more meaningful location where everyone can have access to it by not having it in our home directory
   `mv script.sh /usr/local/bin/script`
2. In linux file extension doesn't really matter. So we can drop the `.sh` it works just fine.
3. Make the script own as root and group as root so that only people having sudo access can modify it.
   `sudo chown root:root /usr/local/bin/script`
4. After step 1 we should be able to directly run our script
   `script`
