class HardWorker
  include Sidekiq::Worker

  sidekiq_options(queue: :main)

  def perform
    Test.create!
  end
end
