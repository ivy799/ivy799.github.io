require 'jekyll-watch'

module Jekyll
  module Watcher
    extend self

    if method_defined?(:listen_ignore_paths)
      alias_method :original_listen_ignore_paths, :listen_ignore_paths

      def listen_ignore_paths(options)
        original_listen_ignore_paths(options) + [%r!.*\.TMP!i] # Memperbaiki regex
      end
    end
  end
end
