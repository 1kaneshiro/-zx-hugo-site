:: rmdir /s 删除目录树 /q 安静模式
:: 此脚本在根目录执行
if exist docs (rmdir /s /q docs) else (echo "docs not exists") && ^
docker run --name my-hugo -v D:\Coding\hugo-site:/src -p 1313:1313 --rm -it klakegg/hugo && ^
git add -A  && ^
git commit -m "update:%date%" && ^
git push