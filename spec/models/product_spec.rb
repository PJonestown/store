require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:stock) }

  it { should validate_length_of(:name).is_at_most(30) }
  it { should validate_length_of(:description).is_at_most(140) }
  
  it { should validate_numericality_of(:price) }
  it { should validate_numericality_of(:stock) }

end
