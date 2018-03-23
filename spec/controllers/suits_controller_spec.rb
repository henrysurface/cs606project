require 'rails_helper'

describe SuitsController do

    describe 'GET #index' do
      it "populate an array of suits" do
        suit = FactoryGirl.create(:suit)
        get :index
        assigns(:suits).should eq([suit])
      end

      it "renders the :index template" do
        get :index
        expect(response).to render_template :index
      end
    end
    
    describe 'GET #new' do
      it "assign new parameters to @suits" do
        get :new
        assigns(:suit).should be_a_new(Suit)
      end
      
      it "renders the :new template" do
        get :new
        expect(response).to render_template :new
      end
    end
    
    describe 'POST create' do
      context "with valid attributes" do
        it "creates a new suit" do
          expect{
            post :create, suit: FactoryGirl.attributes_for(:suit)
          }.to change(Suit,:count).by(1)
        end
    
        it "redirects to the new suits" do
          post :create, suit: FactoryGirl.attributes_for(:suit)
          response.should redirect_to Suit.last
        end
      end
      
      context "with invalid attributes" do
        it "does not save the new suit" do
          expect{
            post :create, suit: FactoryGirl.attributes_for(:invalid_suit)
          }.to_not change(Suit,:count)
        end
    
        it "re-renders the new method" do
          post :create, suit: FactoryGirl.attributes_for(:invalid_suit)
          response.should render_template :new
        end
      end
      
      
    end
    

end