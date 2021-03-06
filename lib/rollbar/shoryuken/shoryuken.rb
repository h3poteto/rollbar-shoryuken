require 'shoryuken'
require 'rollbar'

module Rollbar
  module Shoryuken
    class RollbarMiddleware
      def call(worker, queue, sqs_msg, body)
        begin
          yield
        rescue Exception => exception
          scope = {
            :sqs_msg => {
              :data => sqs_msg.data,
              :queue_name => sqs_msg.queue_name
            }
          }
          Rollbar.scope(scope).error(exception, :use_exception_level_filters => true)
          raise exception
        end
      end
    end
  end
end

Shoryuken.configure_server do |config|
  config.server_middleware do |chain|
    chain.add Rollbar::Shoryuken::RollbarMiddleware
  end
end
