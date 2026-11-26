git add -A
git commit -m "upd"
git pull origin main --rebase
git push origin main
gh release delete Release --yes 2>nul
git push --delete origin Release 2>nul
git tag -d Release 2>nul
gh release create Release "app\build\outputs\apk\debug\app-debug.apk" --title "Release" --notes ""