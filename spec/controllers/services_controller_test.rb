describe ServicesController do
  describe "GET #index" do
    let! (:service) { FactoryGirl.create(:service) }
    it "renders the :index view with status 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end