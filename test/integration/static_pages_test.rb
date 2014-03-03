require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "home page has content 'home'" do
        get "/static_pages/home"
        assert response.body.include?('home')
  end
  test "the title for home is not empty" do
        get "/static_pages/home"
        assert_match("<title>Ruby on Rails Tutorial Sample App | Home</title>", response.body)
  end
  test "about page has content 'about'" do
        get "/static_pages/about"
        assert response.body.include?('about')
  end
  test "the title for about is not empty" do
        get "/static_pages/about"
        assert_match("<title>Ruby on Rails Tutorial Sample App | About</title>", response.body)
  end
  test "contact page has content 'contact'" do
        get "/static_pages/contact"
        assert response.body.include?('contact')
  end
  test "the title for contact is not empty" do
        get "/static_pages/contact"
        assert_match("<title>Ruby on Rails Tutorial Sample App | Contact</title>", response.body)
  end
  test "help page hast content 'help'" do
        get "/static_pages/help"
        assert response.body.include?('help')
  end
  test "the title for help is not empty" do
        get "/static_pages/help"
        assert_match("<title>Ruby on Rails Tutorial Sample App | Help</title>", response.body)
  end
end
