class RecipeCategoriesController < ApplicationController
  # GET /recipe_categories
  # GET /recipe_categories.xml
  def index
    @recipe_categories = RecipeCategory.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recipe_categories }
    end
  end

  # GET /recipe_categories/1
  # GET /recipe_categories/1.xml
  def show
    @recipe_category = RecipeCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recipe_category }
    end
  end

  # GET /recipe_categories/new
  # GET /recipe_categories/new.xml
  def new
    @recipe_category = RecipeCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recipe_category }
    end
  end

  # GET /recipe_categories/1/edit
  def edit
    @recipe_category = RecipeCategory.find(params[:id])
  end

  # POST /recipe_categories
  # POST /recipe_categories.xml
  def create
    @recipe_category = RecipeCategory.new(params[:recipe_category])

    respond_to do |format|
      if @recipe_category.save
        flash[:notice] = 'RecipeCategory was successfully created.'
        format.html { redirect_to(@recipe_category) }
        format.xml  { render :xml => @recipe_category, :status => :created, :location => @recipe_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recipe_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_categories/1
  # PUT /recipe_categories/1.xml
  def update
    @recipe_category = RecipeCategory.find(params[:id])

    respond_to do |format|
      if @recipe_category.update_attributes(params[:recipe_category])
        flash[:notice] = 'RecipeCategory was successfully updated.'
        format.html { redirect_to(@recipe_category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recipe_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_categories/1
  # DELETE /recipe_categories/1.xml
  def destroy
    @recipe_category = RecipeCategory.find(params[:id])
    @recipe_category.destroy

    respond_to do |format|
      format.html { redirect_to(recipe_categories_url) }
      format.xml  { head :ok }
    end
  end
end
