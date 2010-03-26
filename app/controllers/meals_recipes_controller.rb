class MealsRecipesController < ApplicationController
  # GET /meals_recipes
  # GET /meals_recipes.xml
  def index
    @meals_recipes = MealsRecipe.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meals_recipes }
    end
  end

  # GET /meals_recipes/1
  # GET /meals_recipes/1.xml
  def show
    @meals_recipe = MealsRecipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meals_recipe }
    end
  end

  # GET /meals_recipes/new
  # GET /meals_recipes/new.xml
  def new
    @meals_recipe = MealsRecipe.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meals_recipe }
    end
  end

  # GET /meals_recipes/1/edit
  def edit
    @meals_recipe = MealsRecipe.find(params[:id])
  end

  # POST /meals_recipes
  # POST /meals_recipes.xml
  def create
    @meals_recipe = MealsRecipe.new(params[:meals_recipe])

    respond_to do |format|
      if @meals_recipe.save
        flash[:notice] = 'MealsRecipe was successfully created.'
        format.html { redirect_to(@meals_recipe) }
        format.xml  { render :xml => @meals_recipe, :status => :created, :location => @meals_recipe }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meals_recipe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meals_recipes/1
  # PUT /meals_recipes/1.xml
  def update
    @meals_recipe = MealsRecipe.find(params[:id])

    respond_to do |format|
      if @meals_recipe.update_attributes(params[:meals_recipe])
        flash[:notice] = 'MealsRecipe was successfully updated.'
        format.html { redirect_to(@meals_recipe) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meals_recipe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meals_recipes/1
  # DELETE /meals_recipes/1.xml
  def destroy
    @meals_recipe = MealsRecipe.find(params[:id])
    @meals_recipe.destroy

    respond_to do |format|
      format.html { redirect_to(meals_recipes_url) }
      format.xml  { head :ok }
    end
  end
end
