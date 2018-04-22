# Setting up RSpec in Ruby

### In Plain Ruby:
* Conventionally, you'll establish the following file structure:

```
-- ruby_with_rspec
   |-- Gemfile
   |-- Rakefile
   |-- lib
        |-- app.rb
   |-- spec
        |-- app_spec.rb
```

* The .rspec folder can contain this setting to colorize the output in the traditional red/green style:
```
--color
```

* The Gemfile also only need include a single line:
```
gem 'rspec'
```

* Set rspec spec as your default rake task. That way, you can simply type rake to run your test suite. Save this code to your Rakefile:
```
begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  # rspec not available
end
```

* In the app_spec.rb file, at the top of the document, make sure to include:
```
require "rspec"
require_relative "../lib/app"
```

Where app is the name of the app.rb file. Now your spec file is linked to your app file, and ready to rock and roll. Make sure, if you haven't already got the gem in the current gemset that you run:
```
bundle
```

Run rspec command:

```
bundle exec rspec
```


