# ember-cli-rails-routes

## Installation

Add this to your `Gemfile` and `bundle install`

```rb
gem 'ember-cli-rails-routes'
```

## Setup

### Rails App

In your `routes.rb` file:

```rb
ember_app :foo, scope: :app, path: 'frontend'
```

This reflects an ember app in the `<RAILS_ROOT>/frontend` directory that is exposed as `/app/foo` in the URL.

### Ember App

Where `frontend/` is the same as `path` from above

```js
// ember-cli-build.js
var app = new EmberApp(defaults, {
  fingerprint: {
    enabled: true,
    prepend: 'frontend/'
  }
});
```

Tell Ember to treat the app route as the main entry point of the Ember app.

```js
// app/router.js
Router.map(function() {
  this.route('frontend', { path: '/app/foo' }, function() {

  });
});
```

## Running tests

- `cd` into ember app (`test/dummy/frontend`)
  - `ember build`
- `cd`  into dummy rails app (`test/dummy`)
  - `cucumber`
