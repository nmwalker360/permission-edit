class FaQController < ApplicationController
  def customer_faq
    @faqmainlist = FaQMainList.all
    @faqsublist = FaQSubList.all
  end
end
