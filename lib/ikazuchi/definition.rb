require 'bundler'
module Ikazuchi
  class Definition
    def root
      @root ||= File.expand_path '../..', __dir__
    end

    def gemfile
      @gemfile ||= File.expand_path 'Gemfile', __dir__
    end

    def definition
      @definition ||= ::Bundler::Definition.build gemfile, nil, nil
    end

    def runtime
      @runtime ||= ::Bundler::Runtime.new root, definition
    end

    def dependencies
      definition.dependencies
    end

    def require!(*groups)
      runtime.require(*groups)
    end

    class << self
      def require!(*groups)
        new.require!(*groups)
      end

      def dependencies
        new.dependencies
      end
    end
  end
end
