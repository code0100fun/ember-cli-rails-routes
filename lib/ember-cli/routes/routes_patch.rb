class ::ActionDispatch::Routing::Mapper
  def ember_app(app, options)
    scope = options.fetch(:scope, '')
    route = "#{scope}/#{app}"
    path = options.fetch(:path, route)
    dist_path = options.fetch(:dist_path, "#{path}/dist")

    Rails.application.routes.draw do
      match "/#{path}/assets/*filename",
        to: EmberCLI::Routes::EmberController.action(:handle_asset),
        as: "#{app}_asset_app",
        defaults: {
          path: path,
          dist_path: dist_path
        },
        via: :get
      match "/#{route}(/*path)",
        to: EmberCLI::Routes::EmberController.action(:handle),
        as: "#{app}_app",
        defaults: {
          path: path,
          dist_path: dist_path
        },
        via: :get
    end
  end
end
