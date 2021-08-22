rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:wangliuyong/ly-ui-preview.git&&
git push -f -u origin master &&
cd -
echo wangliuyong.github.io/ly-ui-preview/index.html