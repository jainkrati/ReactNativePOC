# ReactNativePOC
Refer to the Presentation present in the files of this repository to know about ReactNative in my style :)


Installing ReactNative:
======================
1.Install homebrew:
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2.Install nvm:
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

3.Open -bash_profile by entering the following commands:
touch ~/.bash_profile; open ~/.bash_profile

and put the following in it:
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

4.Install latest version of Node.js
nvm install node && nvm alias default node

5.Install Watchman
brew install watchman

6.Install flow
brew install flow

Initialising the ReactNative default Project:
=============================================
npm install -g react-native-cli
react-native init AwesomeProject

Now open index.ios.js and edit it to reflect changes in your app on Command+R.


Addding ReactNative to Existing Project:
=======================================
Alternatively, you can add ReactNative to your existing project using cocoa pods:
# React native
pod 'React', :git => "git@github.com:facebook/react-native", :tag => 'v0.24.0', :subspecs => [
    'Core',
    'RCTImage',
    'RCTNetwork',
    'RCTText',
    'RCTWebSocket'
    # Add any other subspecs you want to use in your project
]
