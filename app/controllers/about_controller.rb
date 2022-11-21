class AboutController < ApplicationController
  def index
    @about = About.order("subject ASC")
    @contact = Contact.all
  end
end
