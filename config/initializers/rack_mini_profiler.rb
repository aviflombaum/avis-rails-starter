if Rails.env.development?
  require "rack-mini-profiler"

  # Initialization code

  # Disable it by setting the condition you want
  Rack::MiniProfiler.config.enabled = ENV["ENABLE_PROFILER"] == "true"
end
