class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @key = 'e36uAEpmBjyZRd4Ftw2ymHwwqJZZAoTZIraNPjLrzv9afWRT8f'
    @secret = 'QGbjpUgInPj8A3cSxfbxSNrZdUKXftV6hT0N9FznRjVLwEf75N'
    @oauth_token = 'epsWOCTbU2yJkf6CvJ6MXs5Gaqwe98JYSDw4TFMFvYySYjHbmZ'
    @oauth_token_secret = 'GV8OKKnlIy4JP0lWXbGx7glzZ8OE6HWaWLQ6QhzjWbvOht8ZnU'

    # Sets the client that allows interfacing with Tumblr
    @myClient = Tumblr::Client.new(
      :consumer_key => @key,
      :consumer_secret => @secret,
      :oauth_token => @oauth_token,
      :oauth_token_secret => @oauth_token_secret
    )

    @posts = @myClient.posts("ahau.tumblr.com", :limit => 10)
    @posts = @posts["posts"]
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params[:blog]
    end
end
