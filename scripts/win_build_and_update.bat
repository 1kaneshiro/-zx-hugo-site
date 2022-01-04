:: rmdir /s 删除目录树 /q 安静模式
rmdir /s /q docs && ^
docker run --name my-hugo -v D:\Coding\hugo-site:/src -p 1313:1313 --rm -it klakegg/hugo && ^
git add -A  && ^
git commit -m "update:%date%" && ^
git push