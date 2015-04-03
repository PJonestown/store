require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #index" do

    it "populates an array of all products" do
      product = create(:product, name: 'first')
      other_product = create(:product, name: 'second')
      get :index
      expect(assigns(:products)).to match_array([product, other_product])
    end

    it "renders the :index template" do
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

    it "assigns a new Product to @product" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end

  end

  describe "GET #edit" do

    it "assigns the requested product as @product" do
      product = create(:product)
      get :edit, id: product
      expect(assigns(:product)).to eq product
    end

    it "renders the :edit template" do
      product = create(:product)
      get :edit, id: product
      expect(response).to render_template :edit
    end
  end


end
