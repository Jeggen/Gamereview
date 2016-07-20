require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  let(:user) { User.create(email: "poster@social.com", password: "12345678") }

  let(:valid_attributes) do
    { rating: 3,
      user: user }
  end

  let(:invalid_attributes) do
    { rating: ""}
  end

  let!(:a_review) { Review.create! valid_attributes }

  test "index with token authentication via query params" do
    get :index, { user_email: "alice@example.com", user_token: "1G8_s7P-V-4MGojaKD7a" }
    assert_response :success
  end

  test "index with token authentication via request headers" do
    @request.headers['X-User-Email'] = "alice@example.com"
    @request.headers['X-User-Token'] = "1G8_s7P-V-4MGojaKD7a"

    get :index
    assert_response :success
  end


  describe "GET #index" do
    it "is not accessible when not logged in" do
      get :index
      expect(response).to redirect_to new_user_session_path
    end

    context "when logged in" do
      login_user

      it "assigns all reviews as @reviews" do
        get :index
        expect(assigns(:reviews)).to eq([a_review])
      end
    end
  end

  describe "GET #show" do
    it "is not accesible when not logged in" do
      get :show, {id: a_review.to_param}
      expect(response).to redirect_to new_user_session_path
    end

    context "when logged in" do
      login_user

      it "assigns the requested review as @review" do
        get :show, {id: a_review.to_param}
        expect(assigns(:review)).to eq(a_review)
      end
    end
  end

  describe "POST #create" do
    it "is not accessible when not logged in" do
      post :create, {id: valid_attributes}, format: :json
      expect(response).to redirect_to new_user_session_path
    end

    context "when logged in" do
      login_user

      context "with valid params" do
        it "creates a new Review" do
          expect {
            post :create, {post: valid_attributes}
          }.to change(Review, :count).by(1)
        end
      end
    end
  end
end
