npm init -y
npm update inflight glob
# commitlint commit 检查 &&husky git hook 
npm install --save-dev @commitlint/{cli,config-conventional}
echo "export default { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js
npm install --save-dev husky
npm pkg set scripts.commitlint="commitlint --edit"
echo "npm run commitlint \${1}" > .husky/commit-msg

# release it 在本地和远程同步changelog
npm install release-it @release-it/conventional-changelog --save-dev   