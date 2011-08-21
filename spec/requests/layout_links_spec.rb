require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/experience'" do
    get '/experience'
    response.should have_selector('title', :content => "Experience")
  end

  it "should have a Help page at '/education'" do
    get '/education'
    response.should have_selector('title', :content => "Education")
  end
  
  it "should have a signup page at '/sample'" do
    get '/sample'
    response.should have_selector('title', :content => "Sample")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Education"
    response.should # fill in
    click_link "Experience"
    response.should # fill in
    click_link "Sample"
    response.should # fill in
    click_link "Contact"
    response.should # fill in
  end
  
end