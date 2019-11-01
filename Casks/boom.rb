cask 'boom' do
  version '1.6.8,1553238536'
  sha256 'cc683afd2518210181d4994c9be0ada0e4d1dded0c4865dcfb3fdafea8849d82'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml'
  name 'Boom'
  homepage 'https://www.globaldelight.com/boom'

  depends_on macos: '>= :yosemite'

  app 'Boom 2.app'

  uninstall kext:      'com.globaldelight.driver.Boom2Device',
            launchctl: [
                         'com.globaldelight.Boom2.*',
                         'com.globaldelight.Boom2Daemon',
                       ],
            signal:    ['TERM', 'com.globaldelight.Boom2']

  zap trash: [
               '~/Library/Application Support/com.globaldelight.Boom2',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2daemon.sfl*',
               '~/Library/Preferences/com.globaldelight.Boom2.plist',
               '~/Library/Preferences/com.globaldelight.Boom2Daemon.plist',
             ]
end
