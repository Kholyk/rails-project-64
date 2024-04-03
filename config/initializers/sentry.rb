# frozen_string_literal: true

Sentry.init do |config|
  config.dsn = 'https://815a0879d2b1230842de294e6a2e4105@o4507016233156608.ingest.us.sentry.io/4507016242003968'
  config.breadcrumbs_logger = %i[active_support_logger http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |_context|
    true
  end
end
