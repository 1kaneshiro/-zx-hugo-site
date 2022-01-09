#!/bin/sh
docker run --name my-hugo -v /Users/zzx/Project/site:/src -p 1313:1313 --rm -it klakegg/hugo server