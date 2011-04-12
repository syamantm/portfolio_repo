class PagesController < ApplicationController
  def home
     @title = "Home"
  end
  
  def contact
     @title = "Contact"
  end
  
  def education
     @title = "Education"
  end
  
  def experience
     @title = "Experience"
  end
  
  def sample
     @title = "Sample"
  end
  
end
