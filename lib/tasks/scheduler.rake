desc "This task is called by the Heroku scheduler add-on"

task :collect_twitter => :environment do
  puts "Updating..."
  
  TwitterCollectorJob.perform_now
  
  puts "Done."
end