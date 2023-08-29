# Avi's Rails Starter

## Libraries

| ruby                  | 3.2.2                     |
| --------------------- | ------------------------- |
| rails                 | rails/rails, branch: main |
| Database              | postgres, pg              |
| Server                | puma 6                    |
| Javascript Bundling   | importmap-rails           |
| CSS                   | tailwindcss-rails         |
| JSON                  | oj                        |
| Environment Variables | dotenv-rails              |
| Testing               | rspec-rails               |
| Factories/Fixtures    | factory_bot_rails         |
| Debugger              | pry-rails                 |
| Errors                | better_errors             |
| LiveReload            | rails_live_reload         |
| HTML Linter           | htmlbeautifier            |
| ERB Linter            | erb_lint                  |
| Ruby Linter           | standardrb, rubocop-rails |
| RSpec Linter          | rubocop-rspec             |
| Profiler              | rack-mini-profiler        |
| UI Kit                | shadcn-ui                 |

## Process Management

To start the application, run `./bin/dev` which will try to use
[overmind](https://github.com/DarthSim/overmind) and if not, use `foreman`.

## Debugging

`pry-rails` is installed. You can connect to any debugging session via `./bin/debug` which connects
to the overmind `tmux` session.

## Resetting the Application

A rake task is provided to reset the application to your application such as renaming the main
application module, changing the database names, resetting the git repository to a new state, and
resetting the README.md if you want.

Usage:

`rake template:reset`

## [shadcn-ui](shadcn.rails-components.com)

[shadcn-ui](https://github.com/aviflombaum/shadcn-rails/) is installed with the button, dropdown,
and popover components already installed in the application. The majority of the configuration takes
place in `config/shadcn.tailwind.js` and imported into `config/tailwind.config.js`.
`app/assets/stylesheets/shadcn.css` which is imported into
`app/assets/stylesheets/application.tailwind.css`

## Templates

The `PagesController` is setup to render the templates that come with the starter. Light/Dark mode
is controller via the Stimulus controller `app/javascript/controllers/theme_controller.js`. Any
element bound to `data-controller="theme"` `data-action="theme#toggle"` will toggle the theme with
preferences saved to local storage.

### Landing

![Landing Page](https://img.avi.nyc/ShQQ9ygQ+)

### App

![App Page](https://img.avi.nyc/smx3lhQv+)

### Shell

![Shell Page](https://img.avi.nyc/gWP4wV7J+)

## Hatchbox Deployment

If you use hatchbox and set the environment variables

```
HATCHBOX_APP_ID
HATCHBOX_DEPLOY_KEY
```

You can trigger a deploy to hatchbox from your `main` branch with `./bin/deploy`
