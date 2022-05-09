require 'securerandom'

class LinksController < ApplicationController

  def create 
    original_url = params[:link][:original_url]
    code = generate_code
    @link = Link.new(original_url: original_url, code: code)
    if @link.save
      redirect_to @link
    end 
  end 

  def show
    @link = Link.find(params[:id])
  end 

  private

  def generate_code
    SecureRandom.alphanumeric(5).to_s
  end 

end