require 'spec_helper.rb'

describe Admin::CategoriesController, type: :controller do
  
  describe 'new' do
    it 'should create a new category' do
      post :new, category: {:id => "1122"}
      response.should redirect_to('/accounts/signup')
    end
  end
  
  describe 'delete' do
    it 'should delete category' do
      cat1 = double(Category, :id => "1123")
      Category.stub(:find).and_return(cat1)
      Category.stub(:destroy => cat1)
      delete :destroy, {:id => "1123"}
      response.should redirect_to('/accounts/signup')
    end
  end

end