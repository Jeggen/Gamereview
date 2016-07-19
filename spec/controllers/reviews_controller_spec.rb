require 'rails_helper'

describe ReviewsController do

  describe "GET #index" do
    it "assigns a new review to @reviews" do
      review = Review.create!( rating: 4 )

    get :index

    expect(assigns(:reviews)).to eq([review])
    assert_response :success
    end
  end
end
#
# require 'rails_helper'
#
# RSpec.describe ReviewsController, type: :controller do
#   let(:user) { User.create(email: "bla@bla.com", password: "11112222") }
#
#   let(:valid_attributes) do
#     { rating: 4, user: user }
#   end
#
#   let(:invalid_attributes) do
#     { rating: "" }
#   end
#
#   let!(:a_review) { Review.create! valid_attributes }
#
#   describe "GET #index" do
#     it "is not accessible when not logged in" do
#       get :index
#       expect(response).to redirect_to new_user_session_path
#     end
#
#     context "when logged in" do
#       login_user
#
#       it "assigns all reviews as @reviews" do
#         get :index
#         expect(assigns(:posts)).to eq([a_post])
#       end
#     end
#   end

  # describe "GET #show" do
  #   it "assigns @review" do
  #     review = Review.create(rating: 2)
  #
  #     get :show, id: review.id
  #
  #     expect(assigns(:review)).to eq(review)
  #   end
  # end
#   describe "GET #new" do
#     it "assigns a new review as @review" do
#       get :new
#
#       expect(assigns(:review)).to be_a_new(Review)
#     end
#   end
#
#   describe "GET #edit" do
#       let(:review) { Review.create( rating: 7) }
#
#     before do
#       get :edit, id: review.id
#     end
#
#     it "assigns the requested review as @review" do
#       expect(assigns(:review)).to eq(review)
#     end
#     it "renders the edit template" do
#       expect(response).to render_template("edit")
#     end
#   end
# end
