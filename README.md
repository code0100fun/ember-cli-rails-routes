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

First, you need to tell Ember to prepend the apps directory so Rails can serve assets from the right Ember app.

Here `frontend/` is the same as `path` from above.

```js
// ember-cli-build.js
var app = new EmberApp(defaults, {
  fingerprint: {
    enabled: true,
    prepend: 'frontend/'
  }
});
```

Second, tell Ember to treat the app route as the main entry point of the Ember app.

```js
// app/router.js
Router.map(function() {
  this.route('frontend', { path: '/app/foo' }, function() {

  });
});
```

#### Alternativly use th ember-cli-rails-routes addon

Notice that using the fingerprint option causes the assets to be fingerprinted even in development, which increases build times. You can get just the prepend behavior and only in development by using the `ember-cli-rails-routes` addon.

```
$ ember install ember-cli-rails-routes
$ RAILS_PREPEND=frontend/ ember build
```

## Running tests

- `cd` into ember app (`test/dummy/frontend`)
  - `ember build`
- `cd`  into dummy rails app (`test/dummy`)
  - `cucumber`
