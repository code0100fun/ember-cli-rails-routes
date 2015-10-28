module EmberCLI
  module Routes
    class EmberController < ::ApplicationController
      def handle
        render text: 'Welcome to Ember.js!'
      end
    end
  end
end
