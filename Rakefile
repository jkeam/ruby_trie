require 'rake/testtask'
require 'coveralls/rake/task'

Rake::TestTask.new do |t|
  t.libs << "spec"
  t.test_files = FileList['spec/**/*_spec.rb']
end

Coveralls::RakeTask.new
task :test_with_coveralls => [:test, 'coveralls:push']

task :default => :test_with_coveralls
