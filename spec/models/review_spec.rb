require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "validations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to validate_presence_of(:rating) }

    describe "Make sure users can't review the same game more than once" do
      let(:user) {User.create(email: 'bla@bla.com', password: '111222')}
      let(:review) { Review.create(rating: 4 )}
    end
  end
end
