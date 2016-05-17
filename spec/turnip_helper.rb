turnip_helper_path = File.expand_path("..", __FILE__)
Dir.glob("#{turnip_helper_path}/features/step_definitions/**/*_steps.rb") { |f| require f }

RSpec.configure do |config|
  config.define_derived_metadata do |metadata|
    if metadata[:controller]
      metadata[:type] = :controller
    end
  end
end
