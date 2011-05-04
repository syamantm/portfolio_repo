class VisitorMailer < ActionMailer::Base
  default :from => "blog.syamantak@gmail.com",
          :to => "syamantak.mukhopadhyay@gmail.com"
  
  def visitor_request(user)
    @user = user    
    mail(:subject => user.subject)
  end
end
