require 'rake'
require 'date'

SOURCE = "."

CONFIG = {
  'tour_src_path'  => File.join(SOURCE, "lib", "tour"),
  'tour_test_path' => File.join(SOURCE, "test", "tour"),
  'dart_ext' => "dart",
  'authorized' => "sinlov",
  'mail' => "sinlovppt@gmail.com",
}

def ask(message, valid_options)
  if valid_options
    answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") while !valid_options.include?(answer)
  else
    answer = get_stdin(message)
  end
  answer
end

def get_stdin(message)
  print message
  STDIN.gets.chomp
end

namespace :tour do
  tour_name = 'tour'

  desc "#{"mk #{tour_name} test case".rjust(20, '-')} env: item=built_in_types t=string . Warning, this task will check source file at: #{CONFIG['tour_src_path']} and mark at #{CONFIG['tour_test_path']}"
  task :'test' do
    abort("rake aborted: '#{CONFIG['tour_src_path']}' directory not found.") unless FileTest.directory?(CONFIG['tour_src_path'])
    abort("rake aborted: '#{CONFIG['tour_test_path']}' directory not found.") unless FileTest.directory?(CONFIG['tour_test_path'])
    item_name = ENV['item']
    title_name = ENV['t']
    if item_name == ""
      abort("rake aborted: must set item="", now is: #{item_name}")
    end
    if title_name == ""
      abort("rake aborted: must set t="", now is: #{title_name}")
    end
    item_name = "#{item_name.strip.downcase.gsub('-', '_')}"
    title_name = "#{title_name.strip.downcase.gsub('-', '_')}"
    source_file = File.join(CONFIG['tour_src_path'], item_name, "#{title_name}.#{CONFIG['dart_ext']}")
    if not File.exist?(source_file)
      abort("rake aborted! source_file not found, please check at: #{source_file}")
    end
    target_folder = File.join(CONFIG['tour_test_path'], item_name)
    if File.directory?(target_folder)
      mkdir_p target_folder
    end
    target_test_file = File.join(target_folder, "#{title_name}_test.#{CONFIG['dart_ext']}")
    if File.exist?(target_test_file)
      abort("rake aborted! #{target_test_file} not overwrite") if ask("#{target_test_file} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
    end
    puts "Creating new test: #{target_test_file}"
    open(target_test_file, 'w') do |post|
      post.puts "// this test for #{tour_name} => #{item_name} : #{title_name}"
      post.puts "// authorized #{CONFIG['authorized']} at @#{Date.today.strftime("%Y")}"
      post.puts "// mail: #{CONFIG['mail']}"
      post.puts ""
      post.puts "import 'package:test/test.dart';"
      post.puts ""
      post.puts "main() {"
      post.puts "  group('#{title_name}', () {"
      post.puts "    test('#{title_name}', () {"
      post.puts "       expect('', equals(''));"
      post.puts "    });"
      post.puts "  });"
      post.puts "}"
    end
  end


  desc "#{"mk #{tour_name} source".rjust(20, '-')} env: item=built_in_types t=string . Will mk at: #{CONFIG['tour_src_path']}"
  task :'src' do
    abort("rake aborted: '#{CONFIG['tour_src_path']}' directory not found.") unless FileTest.directory?(CONFIG['tour_src_path'])
    item_name = ENV['item']
    title_name = ENV['t']
    if item_name == ""
      abort("rake aborted: must set item="", now is: #{item_name}")
    end
    if title_name == ""
      abort("rake aborted: must set t="", now is: #{title_name}")
    end
    item_name = "#{item_name.strip.downcase.gsub('-', '_')}"
    title_name = "#{title_name.strip.downcase.gsub('-', '_')}"
    target_folder = File.join(CONFIG['tour_src_path'], item_name)
    if File.directory?(target_folder)
        mkdir_p target_folder
    end
    source_file = File.join(target_folder, "#{title_name}.#{CONFIG['dart_ext']}")
    if File.exist?(source_file)
      abort("rake aborted! #{source_file} not overwrite") if ask("#{source_file} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
    end
    puts "Creating new source: #{source_file}"
    open(source_file, 'w') do |post|
      post.puts "// this source for #{tour_name} => #{item_name} : #{title_name}"
      post.puts "// authorized #{CONFIG['authorized']} at @#{Date.today.strftime("%Y")}"
      post.puts "// mail: #{CONFIG['mail']}"
      post.puts ""
      post.puts "// TODO"
    end
  end
end
