class FaQController < ApplicationController
  def manager_faq
    @faqmainlist = FaQMainList.all
    @faqsublist = FaQSubList.all
  end
  
  def faq_edit
    
  end
  
  def faq_delete
    
  end

  def customer_faq
    @faqmainlist = FaQMainList.all
    @faqsublist = FaQSubList.all
  end
end
