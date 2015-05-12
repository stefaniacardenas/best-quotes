class QuotesController < Runways::Controller

	def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def a_quote
    render :a_quote, :noun => :winking
  end

  def quote_1
    quote_1 = Runways::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def new_quote
    attrs = {
        "submitter" => "web user",
        "quote" => "A picture is worth a thousand pixels",
        "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def show
    quote = FileModel.find(params["id"])
    ua = request.user_agent #This gets the info about the user's browser
    render_response :quote, :obj => quote, :ua => ua
  end
	
end