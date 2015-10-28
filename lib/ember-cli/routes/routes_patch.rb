module EmberCLI
  module Routes
    class RoutesPatch
      class ::ActionDispatch::Routing::Mapper
        def ember_app(app, options)
          scope = options.fetch(:scope, '')
          route = "#{scope}/#{app}"
          dist_path = options.fetch(:path, "#{route}/dist")

          Rails.application.routes.draw do
            match "/#{route}(/*path/)",
              to: EmberCLI::Routes::EmberController.action(:handle),
              as: "#{app}_app",
              defaults: { dist_path: dist_path },
              via: :get
          end
        end
      end
    end
  end
end
