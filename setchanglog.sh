# install npm
###
 # @Date: 2024-11-02 10:17:19
 # @LastEditors: hubery-lee hrbeulh@126.com
 # @LastEditTime: 2024-11-02 11:16:24
 # @FilePath: /changelog/setchanglog.sh
 # @Description: Do not edit
### 
sudo apt install npm
npm config set registry http://registry.npmmirror.com

npm init -y

# install node 23
curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt-get install -y nodejs

# npm update inflight glob
# commitlint commit 检查 &&husky git hook 
npm install --save-dev @commitlint/{cli,config-conventional}
echo "export default { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js
npm install --save-dev husky
npm pkg set scripts.commitlint="commitlint --edit"
echo "npm run commitlint \${1}" > .husky/commit-msg

# release it 在本地和远程同步changelog
npm update inflight glob
npm install release-it @release-it/conventional-changelog --save-dev   

# set git editor vim
# git config --global core.editor "vim"