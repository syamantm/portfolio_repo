require 'rss'

module ApplicationHelper
  
  def logo
    logo = image_tag("logo.png", :alt => "Home logo", :class => "round")    
  end
  
  # Return a title on a per-page basis.
  def title
    base_title = "Syamantak Mukhopadhyay"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
   def readRss
    @rss = RSS::Parser.parse(open('http://blog.syamantakm.com/posts.rss').read, false)
  end
  
  def truncate_words(text, length = 80)
     
    return if text == nil
    end_string = " ..."
    words = text.split()
    words[0..(length-1)].join(' ') + (words.length > length ? end_string : '')
  end
  
end
