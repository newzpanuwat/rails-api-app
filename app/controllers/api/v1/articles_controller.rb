class Api::V1::ArticlesController < Api::ApiController
  def index
    @articles = Article.all
    render_ok(@articles)
  end
end
