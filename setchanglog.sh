# install npm
###
 # @Date: 2024-11-02 10:17:19
 # @LastEditors: hubery-lee hrbeulh@126.com
 # @LastEditTime: 2024-11-02 14:01:53
 # @FilePath: /changelog/setchanglog.sh
 # @Description: Do not edit
### 
sudo apt install npm
npm config set registry http://registry.npmmirror.com

npm init -y

# 安装 nvm (Node 版本管理器)
sudo npm install -g n
sudo n lts
hash -r

# commitlint commit 检查 &&husky git hook 
npm install --save-dev @commitlint/{cli,config-conventional}
echo "export default { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js
npm install --save-dev husky
# npx husky init
npx husky install
npm pkg set scripts.commitlint="commitlint --edit"
echo "npm run commitlint \${1}" > .husky/commit-msg

# release it 在本地和远程同步changelog
npm update inflight glob
npm install release-it @release-it/conventional-changelog --save-dev   

# set git editor vim
# git config --global core.editor "vim"