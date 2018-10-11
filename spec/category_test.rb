require 'spec_helper.rb'

describe CategoriesController, type: :controller do
  
  describe 'new' do
    it 'should create a new category' do
      post :new, category: {:id => "1122"}
      response.should redirect_to(category_path)
    end
  end
  
  describe 'delete' do
    it 'should delete category' do
      cat1 = double(Category, :id => "1123")
      allow(Category).to receive(:find).and_return(cat1)
      expect(cat1).to receive(:destroy)
      delete :destroy, {:id => "1123"}
      response.should redirect_to(category_path)
    end
  end

end