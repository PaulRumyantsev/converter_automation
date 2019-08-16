Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    screenshot_file = File.join("screenshots", "screen.png")
    $driver.screenshot(screenshot_file)
  end
  $driver.driver_quit
end