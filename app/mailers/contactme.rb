class Contactme < ActionMailer::Base
  default :from => "from@example.com",
          :to => "syamantak.mukhopadhyay@gmail.com"
  
  def sendRequest(from, subject, message)
    
    
  end
end
