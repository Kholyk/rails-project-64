# frozen_string_literal: true

Sentry.init do |config|
  config.dsn = 'https://815a0879d2b1230842de294e6a2e4105@o4507016233156608.ingest.us.sentry.io/4507016242003968'

  # get breadcrumbs from logs
  config.breadcrumbs_logger = %i[active_support_logger http_logger]

  # Add data like request headers and IP for users, if applicable;
  # see https://docs.sentry.io/platforms/ruby/data-management/data-collected/ for more info
  config.send_default_pii = true

  # enable tracing
  # we recommend adjusting this value in production
  config.traces_sample_rate = 1.0

  # enable profiling
  # this is relative to traces_sample_rate
  config.profiles_sample_rate = 1.0
end
