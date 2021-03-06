# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
set :output, "log/whenever.log"

job_type :backup, "cd :path && bundle exec backup perform :task :output"

every :day, :at=>'18:00' do
  backup '-t klog -c config/backup_config.rb'
end

every :day, :at=>'18:00' do # Many shortcuts available: :hour, :day, :month, :year, :reboot
  runner "Captcha.destroy_all"
  runner "Captcha.random_create(20)"
end
