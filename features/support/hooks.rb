Before do
  # Do something before each scenario.
end

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
end

After do
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.
  Capybara.reset_session!

  if scenario.failed?
    # Do something if scenario fails.
  end
end

# Tagged hooks

Before('@Ex_tag1 and @Ex_tag2') do
  # This will only run before scenarios tagged
  # with @cucumis OR @sativus.
end

AfterStep('@Ex_tag1 and @Ex_tag2') do
  # This will only run after steps within scenarios tagged
  # with @cucumis AND @sativus.
end
