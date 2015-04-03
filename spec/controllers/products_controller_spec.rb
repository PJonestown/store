require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #index" do

    it "populates an array of all products" do
      product = create(:product, name: 'first')
      other_product = create(:product, name: 'second')
      get :index
      expect(assigns(:products)).to match_array([product, other_product])
    end

    it "returns http success" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do

    it "assigns the requested product as @product" do
      product = create(:product)
      get :show, id: product
      expect(assigns(:product)).to eq product
    end

    it "returns http success" do
      product = create(:product)
      get :show, id: product
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
