class VisitorMailer < ActionMailer::Base
  default :from => "blog.syamantak@gmail.com",
          :to => "syamantak.mukhopadhyay@gmail.com"
  
  def cv_request(user)
    @user = user    
    mail(:subject => "Request for complete CV")
  end
end
