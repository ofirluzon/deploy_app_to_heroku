namespace :cron do
  desc 'Create a test record'
  task create_test_tecord: :environment do
    HardWorker.perform_async
  end
end
