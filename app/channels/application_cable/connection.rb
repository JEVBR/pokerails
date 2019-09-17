module ApplicationCable
  class Connection < ActionCable::Connection::Base
    def connect
      logger.add_tags 'ActionCable', "noouserhahah"
    end
  end
end
