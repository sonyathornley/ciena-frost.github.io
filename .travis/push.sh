#!/bin/sh

setup_git() {
  git config --global user.email "ericwhite613@gmail.com"
  git config --global user.name "Eric White"
}

commit_website_files() {
  git checkout dev
  node generate-pages-from-markdown.js
  node generate-components.js
  git add --all
  git commit --message "[ci skip] Generating files/folders"
  git push
}

publish_gh_pages() {
  echo "I AM NOW ABOUT TO EXECUTE THE GH_PAGES SHELL COMMANDS"
  ember install:addon ember-cli-github-pages
  echo "I AM NOW ABOUT TO EXECUTE THE PUBLISH COMMAND"
  ember github-pages:commit --message "[ci skip] Update gh-pages"
  git push
}

setup_git
commit_website_files
publish_gh_pages
