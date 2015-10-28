module EmberCLI
  module Routes
    class EmberController < ApplicationController
      # TODO: Investigate if this is a vulnerability
      protect_from_forgery :except => :handle_asset

      def handle
        if Rails.env.production?
          deploy = EmberCLI::Deploy::Redis.new(namespace: "frontend")
          render html: deploy.html.html_safe, layout: false
        else
          render file: "#{params[:dist_path]}/index.html", layout: false
        end
      end

      # in development/test only
      def handle_asset
        filename = "#{params[:filename]}.#{params[:format]}"
        render file: "#{params[:dist_path]}/assets/#{filename}", layout: false
      end
    end
  end
end
