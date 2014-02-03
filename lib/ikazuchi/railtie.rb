module Ikazuchi
  class Railtie < ::Rails::Railtie
    Ikazuchi::Definition.require!(Rails.env)
  end
end
