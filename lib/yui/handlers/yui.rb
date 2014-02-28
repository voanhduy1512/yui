require "lita"

module Yui
  module Handlers
    class YuiHandler < Handler
      # Lita HTTPRoute for Slack: Outgoing WebHook integration
      route /^help\s+(.+)/, :help

      # Class method called by Lita for handler configuration
      def self.default_config(default)
      end

      def help(req, res)
        res.status = 200
        res.body = "Hello, I am Yui"
        # log.debug "SlackHandler::receive webhook_token:#{req['token']} team_domain:#{req['team_domain']}"
        # log.debug "SlackHandler::receive user id:#{req['user_id']} name:#{req['user_name']}"
        # log.debug "SlackHandler::receive room id:#{req['channel_id']} name:#{req['channel_name']}"
        # log.debug "SlackHandler::receive message text size #{req['text'].size} byte(s)"
        # user = User.create(req['user_id'], name: req['user_name'], mention_name: req['user_name'])
        # # Register channel using Lita::User class
        # room = User.create(req['channel_id'], name: req['channel_name'])
        # source = Source.new(user: user, room: room.id)
        # message = Message.new(robot, req['text'], source)
        # # Route the message to the adapter
        # log.info 'SlackHandler::receive routing message to the adapter'
        # robot.receive message
        # log.debug 'SlackHandler::receive ending'
      end

      #
      # Accessor shortcuts
      #
      def log
        Lita.logger
      end

      def config
        Lita.config.handlers.yui_handler
      end
    end

    Lita.register_handler(YuiHandler)
  end
end
