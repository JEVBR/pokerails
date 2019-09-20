module ApplicationCable

  class Connection < ActionCable::Connection::Base
    # identified_by "noob"

    def connect
      logger.add_tags 'ActionCable', "noouserhahah"
      # return true
    end
  end
end
