Rails.application.routes.draw do
  ember_app :foo, scope: :app, path: 'frontend/dist'
end
