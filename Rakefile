require 'rake'
require 'date'

SOURCE = "."

CONFIG = {
  'playground_src_path'  => File.join(SOURCE, "lib", "playground"),
  'playground_test_path' => File.join(SOURCE, "test", "playground"),
  'tour_src_path'  => File.join(SOURCE, "lib", "tour"),
  'tour_test_path' => File.join(SOURCE, "test", "tour"),
  'dart_ext' => "dart",
  'project_root_name' => "dartlang_playground",
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

def check_folder(target_folder)
  if not File.directory?(target_folder)
    mkdir_p target_folder
  end
end

namespace :playground do
  ns_name_playground = 'playground'

  desc "#{"mk #{ns_name_playground} source".rjust(20, '-')} env: pkg=demo_time c=date_time . Will mk at: #{CONFIG['playground_src_path']}"
  task :'src' do
    abort("rake aborted: '#{CONFIG['playground_src_path']}' directory not found.") unless FileTest.directory?(CONFIG['playground_src_path'])
    pkg_name = ENV['pkg']
    class_name = ENV['c']
    if pkg_name == ""
      abort("rake aborted: must set item="", now is: #{pkg_name}")
    end
    if class_name == ""
      abort("rake aborted: must set t="", now is: #{class_name}")
    end
    pkg_name = "#{pkg_name.strip.downcase.gsub('-', '_')}"
    class_name = "#{class_name.strip.downcase.gsub('-', '_')}"
    target_folder = File.join(CONFIG['playground_src_path'], pkg_name)
    check_folder(target_folder)
    source_file = File.join(target_folder, "#{class_name}.#{CONFIG['dart_ext']}")
    if File.exist?(source_file)
      abort("rake aborted! #{source_file} not overwrite") if ask("#{source_file} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
    end
    class_hump_name = class_name.gsub('_', ' ').gsub(/\b\w/){$&.upcase}.gsub(' ', '')
    # puts "-> Creating new source: #{source_file}"
    open(source_file, 'w') do |line_w|
      line_w.puts "// this source for #{ns_name_playground} => #{pkg_name} : #{class_hump_name}.dart"
      line_w.puts "// authorized #{CONFIG['authorized']} at @#{Date.today.strftime("%Y")}"
      line_w.puts "// mail: #{CONFIG['mail']}"
      line_w.puts ""
      line_w.puts "class #{class_hump_name} {"
      line_w.puts "  // todo"
      line_w.puts "}"
      line_w.puts ""
    end
    puts "-> Creating finish #{ns_name_playground} source at: #{source_file}"
  end
end

namespace :tour do
  ns_name_tour = 'tour'

  desc "#{"mk #{ns_name_tour} test case".rjust(20, '-')} env: item=built_in_types t=string . Warning, this task will check source file at: #{CONFIG['tour_src_path']} and mark at #{CONFIG['tour_test_path']}"
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
    check_folder(target_folder)
    target_test_file = File.join(target_folder, "#{title_name}_test.#{CONFIG['dart_ext']}")
    if File.exist?(target_test_file)
      abort("rake aborted! #{target_test_file} not overwrite") if ask("#{target_test_file} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
    end
    # puts "-> Creating new test: #{target_test_file}"
    open(target_test_file, 'w') do |line_w|
      line_w.puts "// this test for #{ns_name_tour} => #{item_name} : #{title_name}"
      line_w.puts "// authorized #{CONFIG['authorized']} at @#{Date.today.strftime("%Y")}"
      line_w.puts "// mail: #{CONFIG['mail']}"
      line_w.puts ""
      line_w.puts "import 'package:test/test.dart';"
      line_w.puts "import 'package:#{CONFIG['project_root_name']}/#{ns_name_tour}/#{item_name}/#{title_name}.dart';"
      line_w.puts ""
      line_w.puts "main() {"
      line_w.puts "  group('#{title_name}', () {"
      line_w.puts "    test('#{title_name.gsub('_', ' ')}', () {"
      line_w.puts "       // todo: test case: #{title_name.gsub('_', ' ')}"
      line_w.puts "       expect('', equals(''));"
      line_w.puts "    });"
      line_w.puts "  });"
      line_w.puts "}"
    end
    puts "-> Creating finish unit test at: #{target_test_file}"
  end


  desc "#{"mk #{ns_name_tour} source".rjust(20, '-')} env: item=built_in_types t=string . Will mk at: #{CONFIG['tour_src_path']}"
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
    check_folder(target_folder)
    source_file = File.join(target_folder, "#{title_name}.#{CONFIG['dart_ext']}")
    if File.exist?(source_file)
      abort("rake aborted! #{source_file} not overwrite") if ask("#{source_file} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
    end
    # puts "-> Creating new source: #{source_file}"
    open(source_file, 'w') do |line_w|
      line_w.puts "// this source for #{ns_name_tour} => #{item_name} : #{title_name}"
      line_w.puts "// authorized #{CONFIG['authorized']} at @#{Date.today.strftime("%Y")}"
      line_w.puts "// mail: #{CONFIG['mail']}"
      line_w.puts ""
      line_w.puts "// todo"
    end
    puts "-> Creating finish source at: #{source_file}"
  end

  desc "do all at namespace #{ns_name_tour} env: item=built_in_types t=string"
  task :all => ["#{ns_name_tour}:src", "#{ns_name_tour}:test"]
end
