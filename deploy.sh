set -e

npm run build

cd dist

git init 

git add -A

git commit -m 'new deploy'

git puush -f https://github.com/Shohqadam/vuejs3BookTrackerApp main:gh-pages

