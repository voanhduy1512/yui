require "lita"

module Lita
  module Handlers
    class YuiHandler < Handler
      # Lita HTTPRoute for Slack: Outgoing WebHook integration
      route /^yui\shelp\s+(.+)/, :help
      route /^yui\swant\sto\s+(.+), :want_to

      # Class method called by Lita for handler configuration
      def self.default_config(default)
      end

      def help(response)
        response.reply "How can I help you?"
      end

      def want_to(response)
        response.reply "I know that you want to #{response.matches} but Mr.Duy doesn't allow me to do it for you now. Sorry"
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
