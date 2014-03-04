module Ikazuchi
  class Railtie < ::Rails::Railtie
    Ikazuchi::Definition.require!(:default, Rails.env)
  end
end
