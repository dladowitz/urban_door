require 'rails_helper'

describe City do
  it { should validate_presence_of(:name) }
  it { should have_many :trips }
end
