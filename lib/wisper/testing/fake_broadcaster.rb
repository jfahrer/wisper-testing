module Wisper
  class Testing
    class FakeBroadcaster
      def broadcast(listener, publisher, event, args)
        if Wisper::RSpec::EventRecorder === listener
          listener.public_send(event, *args)
        end
      end
    end
  end
end
