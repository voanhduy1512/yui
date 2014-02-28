require "lita"

module Lita
  module Handlers
    class YuiHandler < Handler
      # Lita HTTPRoute for Slack: Outgoing WebHook integration
      route /help\s+(.+)/, :help

      route \@?[Yy]ui\s(hello|hi), :hello

      route /want\sto\s+(.+)/, :want_to

      # Class method called by Lita for handler configuration
      def self.default_config(default)
      end

      def hello(response)
        response.reply "Hello #{response.user.name}"
      end

      def help(response)
        response.reply "How can I help you?"
      end

      def want_to(response)
        response.reply "I know that you want to #{response.matches} but Mr.Duy doesn't allow me to do it for you now. Sorry"
      end

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
