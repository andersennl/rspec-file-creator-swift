# RSpec file creator

This project is written in Swift 5.

## Usage

Running e.g. 

`./rspeccreator app/controllers/users/signup_controller.rb`

creates the following file:

`spec/controllers/users/signup_controller_spec.rb`

with the following content:

```ruby
require "spec_helper"

describe Users::SignupController do

end
```

As you can see, the correct module and class names are automatically parsed and inserted appropriately into the spec file.

## Setup

Download the latest release under the "release" tab [(here)](https://github.com/andersennl/rspec-file-creator-swift/releases).

In order to execute the script from everywhere, consider adding the binary to your `PATH`.

If you're using `zsh`, add the following to your `~/.zshrc`:
```
export PATH=path-to-directory-containing-the-binary:$PATH
```

Now either open up a new shell window or run `source ~/.zshrc` to load the new path into your `PATH`.

Now you can continue as described under Usage.

## Contribution
Feel free to open up issues or pull requests.
