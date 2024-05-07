This should work only on MacOS and GNU/Linux machines. For using on Windows machines use the [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/).   
These scripts depend on [cURL](https://github.com/curl/curl) and [jq](https://github.com/jqlang/jq) to work so install them.  
cURL should be on any Linux system by default but you might need to install jq.  

- [scrape-html.sh](scrape-html.sh), is not really important but you can still download all the html from every category that the forum has.
- [scrape-json.sh](scrape-json.sh), is the way you can get how many pages there are so you can put it into the download-json.sh.
- [download-json.sh](download-json.sh), is the most important part of the thing because it downloads all the json files. From the json you can make out all the forum posts.
