require 'rake'
require 'erb'

desc "install dot files into your home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile].include? file

    home_file = File.join( ENV['HOME'], ".#{file}" )

    # Special cases
    home_file = File.join( ENV['HOME'], '.vim' ) if file == 'vimfiles'
    home_file = File.join( ENV['HOME'], '.zsh' ) if file == 'oh-my-zsh'

    if File.exist?( home_file )
      if File.identical? file, home_file
        puts "Skipping identical #{home_file}"
        next
      end

      unless replace_all
        print "Overwrite ~/.#{file}? [ynaq]"
        case $stdin.gets.chomp
        when 'y'
          link_file( home_file, file )
        when 'a'
          replace_all = true
          link_file( home_file, file )
        when 'q'
          exit
        else
          puts "Skipping #{home_file}"
          next
        end
      end
    end

    link_file( home_file, file )

  end
end

def link_file( home_file, file )
  puts "Linking #{home_file}"

  system %Q{ rm #{home_file}} if File.exist?( home_file )
  system %Q{ln -s "$PWD/#{file}" "#{home_file}"}
end
