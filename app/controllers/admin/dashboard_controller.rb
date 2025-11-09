class Admin::DashboardController < PagesController
  before_action :authenticate_admin!
  def index
    @total_posts = Post.count
    @total_eventos = Evento.count
    @total_inscricaos = Inscricao.count
  end
end