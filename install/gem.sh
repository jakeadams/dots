brew install gpg2

gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

rvm install 2.2.1
rvm use 2.2.1 --default

gem install bundler
gem install cocoapods
gem install findxcprojorphan
gem install methadone
gem install nokogiri
gem install rubygems-bundler
gem install xcode-result-bundle-processor
gem install xcpretty