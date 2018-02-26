require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new

task default: %i[spec rubocop]

task :html do
  base_dir = File.join(File.dirname(__FILE__), 'doc/')
  html_dir = File.join(base_dir, 'html')
  adoc = File.join(base_dir, 'mml5.adoc')
  sh "asciidoctor -r asciidoctor-diagram -B #{base_dir} -D #{html_dir} #{adoc}"
end
