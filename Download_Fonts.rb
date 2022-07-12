#!/usr/bin/env ruby

require 'open-uri'

if Dir.exist?("C:/Ruby31-x64/") then
  RubyGemsDir = "C:/Ruby31-x64/lib/ruby/gems/3.1.0/gems/"
elsif Dir.exist?("C:/Ruby30-x64/") then
  RubyGemsDir = "C:/Ruby30-x64/lib/ruby/gems/3.0.0/gems/"
elsif Dir.exist?("C:/Ruby27-x64/") then
  RubyGemsDir = "C:/Ruby27-x64/lib/ruby/gems/2.7.0/gems/"
else
  puts "Ruby not found in c:/"
  exit
end

puts "Ruby gems are in " + RubyGemsDir

Dir.glob(RubyGemsDir + "asciidoctor-pdf-*/data/fonts/") do |item|
  FontsDir = File.expand_path(item)
end

FontsKaiGen = %w(
  KaiGenGothicJP-Bold-Italic.ttf
  KaiGenGothicJP-Bold.ttf
  KaiGenGothicJP-Regular-Italic.ttf
  KaiGenGothicJP-Regular.ttf
)

FontsGenYo = %w(
  GenYoMinJP-Bold.ttf
  GenYoMinJP-ExtraLight.ttf
  GenYoMinJP-Heavy.ttf
  GenYoMinJP-Light.ttf
  GenYoMinJP-Medium.ttf
  GenYoMinJP-Regular.ttf
  GenYoMinJP-SemiBold.ttf
)

FontsRicty = %w(
  RictyDiminished-Bold.ttf
  RictyDiminished-BoldOblique.ttf
  RictyDiminished-Oblique.ttf
  RictyDiminished-Regular.ttf
  RictyDiminishedDiscord-Bold.ttf
  RictyDiminishedDiscord-BoldOblique.ttf
  RictyDiminishedDiscord-Oblique.ttf
  RictyDiminishedDiscord-Regular.ttf
)

Dir.chdir(FontsDir) do
  FontsKaiGen.each_with_index do |name, index|
    msg = "[#{index + 1}/#{FontsKaiGen.count}] Downloading #{name}"
    puts msg
    File.open(name, 'wb') do |file_ttf|
      file_ttf.write URI.open("https://github.com/chloerei/asciidoctor-pdf-cjk-kai_gen_gothic/releases/download/v0.1.0-fonts/#{name}").read
    end
  end
  FontsGenYo.each_with_index do |name, index|
    msg = "[#{index + 1}/#{FontsGenYo.count}] Downloading #{name}"
    puts msg
    File.open(name, 'wb') do |file_ttf|
      file_ttf.write URI.open("https://github.com/ButTaiwan/genyo-font/blob/bc2fa246196fefc1ef9e9843bc8cdba22523a39d/JP/#{name}").read
    end
  end
  FontsRicty.each_with_index do |name, index|
    msg = "[#{index + 1}/#{FontsRicty.count}] Downloading #{name}"
    puts msg
    File.open(name, 'wb') do |file_ttf|
      file_ttf.write URI.open("https://github.com/mzyy94/RictyDiminished-for-Powerline/raw/master/#{name}").read
    end
  end
end

puts 'Done'
