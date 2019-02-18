# RSpec file creator

This project currently uses Ruby version 2.5.1, which is hard coded into the `Gemfile`.
It uses Rails' ActiveSupport to convert the file name to module/class names.

## Usage

Running e.g. 

`rspeccreator.rb app/controllers/users/signup_controller.rb`

creates the following file:

`spec/controllers/users/signup_controller_spec.rb`

with the following content:

```ruby
require "spec_helper"

describe Users::SignupController do
  
end
```

As you can see, the script automatically parses the correct module and class names and inserts them appropriately into the spec file.

## Setup
```
git clone https://github.com/andersennl/rspec-file-creator.git
cd rspec-file-creator
bundle
```
In order to execute the script from everywhere, consider adding the `src` path to your `PATH`.

If you're using `zsh`, add the following to your `~/.zshrc`:
```
export PATH=path-to-this-project/src:$PATH
```

Now either open up a new shell window or run `source ~/.zshrc` to load the new path into your `PATH`.

Now you can continue as described under Usage.

## Contribution
Feel free to open up issues or pull requests.
