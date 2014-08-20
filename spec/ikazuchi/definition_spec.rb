require 'spec_helper'

describe Ikazuchi::Definition do
  it { expect(Ikazuchi::Definition.dependencies).to all( be_a Bundler::Dependency ) }
end
