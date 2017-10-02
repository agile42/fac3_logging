require 'lograge'
require 'request_store'

module Fac3Logging
  class Railtie < Rails::Railtie
    railtie_name :fac3_logging

    initializer "railtie.configure_rails_initialization" do
      config.lograge.enabled = true unless Rails.env.development?
      config.lograge.custom_options = lambda do |event|
        extra_data_to_log = { 'hub-correlation-id' => RequestStore[:correlation_id] }
        extra_data_to_log.merge!( 'x-hub-agent-id' => RequestStore[:hub_agent_id]) if RequestStore[:hub_agent_id].present?
        extra_data_to_log.merge!( 'x-hub-agent-name' => RequestStore[:hub_agent_name]) if RequestStore[:hub_agent_name].present?
        extra_data_to_log
      end
    end

  end
end
