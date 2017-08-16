require_relative '../../features/support/env'

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
  if $REMOTE_URL.to_s != ''
    Capybara.configure do |config|
      config.run_server = false
      config.default_driver = :selenium
      config.app_host = $URL
      config.default_max_wait_time = 60
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, browser: :remote, url: $REMOTE_URL, desired_capabilities: :chrome)
      end
      window = Capybara.current_session.driver.browser.manage.window
      window.resize_to(1280, 800) # width, height
    end

  elsif $REMOTE_URL.to_s == ''
    Capybara.configure do |config|
      config.run_server = false
      config.default_driver = :selenium
      config.app_host = $URL
      config.default_max_wait_time = 60
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome)
      end
      window = Capybara.current_session.driver.browser.manage.window
      window.resize_to(1280, 800) # width, height
    end
  end
end
After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.
  if (scenario.failed?)
    time = Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S_')
    dir_path = "./cucumber_output/screenshot"
    name_of_scenario = time + scenario.name.gsub(/\s+/, "_").gsub("/", "_")
    puts "Name of snapshot is #{name_of_scenario}"
    file_path = File.expand_path(dir_path)+'/'+ time +'.png'
    page.save_screenshot file_path
    embed(File.expand_path(file_path), 'image/png', 'Scenario_Failed_Screenshot')
  end
  page.driver.reset!
end
