cask 'mp3tag' do
  version '2.99a'
  sha256 '0d6e9930f1910e64beabe54b7452131c9d1fd4c93196c588d28150c23ff60d49'

  url "https://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  appcast 'https://www.mp3tag.de/en/mac-osx.html'
  name 'MP3TAG'
  homepage 'https://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"

  zap trash: [
               '~/Library/Application Support/de.mp3tag.Mp3tag_*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.mp3tag.mp3tag_*.sfl*',
               '~/Library/Caches/org.kronenberg.Winetricks',
               '~/Library/Preferences/org.kronenberg.Winetricks.plist',
             ]
end
