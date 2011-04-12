require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content => "Syamantak Mukhopadhyay | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
     it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                        :content => "Syamantak Mukhopadhyay | Contact")
    end
  end
  
  describe "GET 'education'" do
    it "should be successful" do
      get 'education'
      response.should be_success
    end
     it "should have the right title" do
      get 'education'
      response.should have_selector("title",
                        :content => "Syamantak Mukhopadhyay | Education")
    end
  end
  
  describe "GET 'experience'" do
    it "should be successful" do
      get 'experience'
      response.should be_success
    end
     it "should have the right title" do
      get 'experience'
      response.should have_selector("title",
                        :content => "Syamantak Mukhopadhyay | Experience")
    end
  end
  
  describe "GET 'sample'" do
    it "should be successful" do
      get 'sample'
      response.should be_success
    end
     it "should have the right title" do
      get 'sample'
      response.should have_selector("title",
                        :content => "Syamantak Mukhopadhyay | Sample")
    end
  end

end
