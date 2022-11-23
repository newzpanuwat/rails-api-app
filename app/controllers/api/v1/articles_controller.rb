class Api::V1::ArticlesController < Api::ApiController
  def index
    @articles = Article.all
    render_ok(@articles)
  end

  def create
    article = Article.new(article_params)
    article.save ? render_created(article: article) : render_bad_request(message: errors_msg(article) )
  end

  private

  def article_params
    params.require(:article).permit(:title, :url, :posted_by)
  end
end
