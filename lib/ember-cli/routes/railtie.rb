module EmberCLI
  module Routes
    class Railtie < Rails::Railtie
      initializer "ember_cli_rails_routes.ember_controller" do |app|
        require "ember-cli/routes/ember_controller"
      end
    end
  end
end
