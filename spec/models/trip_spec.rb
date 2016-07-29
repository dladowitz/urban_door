require 'rails_helper'

describe Trip do
  it { should validate_presence_of(:pickup) }
  it { should validate_presence_of(:car) }
  it { should validate_presence_of(:payment_method) }
  it { should belong_to :driver }
  it { should belong_to :city }
end
