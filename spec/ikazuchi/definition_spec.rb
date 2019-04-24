require 'spec_helper'

describe Ikazuchi::Definition do
  it { expect(described_class.dependencies).to all(be_a(Bundler::Dependency)) }
end
