# sp_remove_subscriber

A quick shell script to remove an email subscriber from StatusPage

## Requirements

 - StatusPage API Key: https://doers.statuspage.io/api/authentication/
 - StatusPage Page ID: Login to StatusPage -> Manage Account -> API -
   Page ID
 - [jq](https://stedolan.github.io/jq/download/) installed

## Usage

```
export $STATUSPAGE_API_KEY="xxxx"
export $STATUSPAGE_PROJECT="xxxx"

./rm_sub.sh "deleteme@example.com" $STATUSPAGE_API_KEY $STATUSPAGE_PROJECT`
```
