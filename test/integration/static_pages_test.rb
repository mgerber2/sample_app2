require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "home page has content 'home'" do
        get "/static_pages/home"
        assert response.body.include?('home')
  end
  test "about page has content 'about'" do
        get "/static_pages/home"
        assert response.body.include?('about')
  end
  test "contact page has content 'contact'" do
        get "/static_pages/contact"
        assert response.body.include?('contact')
  end
  test "help page hast content 'help'" do
        get "/static_pages/help"
        assert response.body.include?('help')
  end
end
