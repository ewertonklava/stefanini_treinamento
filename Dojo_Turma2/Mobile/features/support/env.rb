require 'rspec'
require 'appium_lib'
require 'pry'

desired_caps = {
	'device': 'Pixel3a',
	'browserstack.debug': 'true',
	'platformName': 'Android',
	'app': 'apk/test_ifood.apk'
}

Appium::Driver.new({'caps' => desired_caps}, true)
Appium.promote_appium_methods Object