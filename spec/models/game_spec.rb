require 'rails_helper'

RSpec.describe Game, type: :model do
  describe "validations" do
    it { is_expected.to have_many(:reviews) }
  end
end
