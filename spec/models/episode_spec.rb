require 'rails_helper'

RSpec.describe Episode, type: :model do
  it { expect(described_class.superclass).to be ApplicationResource }
end
