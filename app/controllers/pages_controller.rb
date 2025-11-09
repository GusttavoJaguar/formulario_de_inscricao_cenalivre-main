class PagesController < ApplicationController
  
  def inicio
    @posts = Post.all
  end
    
  def sobre
    @posts = Post.all
  end

  def contatos
    @posts = Post.all
  end
end
