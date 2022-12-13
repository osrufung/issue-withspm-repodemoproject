# frozen_string_literal: true

if !ENV["HOMEBREW_GITHUB_ACCESS_TOKEN"]
  raise "Environmental variable HOMEBREW_GITHUB_ACCESS_TOKEN is not set"
end
`git config --global credential.https://github.com/.helper "! f() { echo username=x-access-token; echo password=$HOMEBREW_GITHUB_ACCESS_TOKEN; };f"`

source 'https://rubygems.org'

gem 'cocoapods'
gem 'cocoapods-amicable', git: 'https://github.com/XINGMobile/cocoapods-amicable.git', tag: '0.3.1'

gem 'cocoapods-dependencies'

gem 'cocoapods-patch'
gem 'fastlane'
gem 'fastlane-plugin-appcenter'
gem 'fastlane-plugin-instabug_official'
gem 'fastlane-plugin-json'
gem 'fastlane-plugin-profile_expiration_info'
gem 'fastlane-plugin-xing_release', git: 'https://github.com/XINGMobile/fastlane-plugin-xing_release.git', tag: '0.8.0'
gem 'fastlane-plugin-xing_calabash', git: 'https://github.com/XINGMobile/fastlane-plugin_xing_calabash.git', tag: 'v0.0.7'
gem 'ffi'
gem 'hanamura2', git: 'https://github.com/XINGMobile/hanamura2.git', tag: '1.1.0'
gem 'ios-lotto', git: 'https://github.com/XINGMobile/ios-lotto.git', tag: '0.5.0'
gem 'jazzy'
gem 'jjsn', git: 'https://github.com/XINGMobile/jjsn.git', tag: '1.7.0'
gem 'nokogiri'
gem 'plist'
gem 'pr_changeset', git: 'https://github.com/XINGMobile/pr_changeset.git', tag: '1.1.3'
gem 'spasie', git: 'https://github.com/XINGMobile/spasie.git', tag: 'v2.0.0'
gem 'jenkins_api_client', git: 'https://github.com/sirstrahd/jenkins_api_client.git', branch: 'for_using_current_master_version' # 1.5.4 only exists in gems.xing.com, this repo is the source for that version.

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
