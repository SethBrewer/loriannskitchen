require 'test_helper'

class MealsRecipesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meals_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meals_recipe" do
    assert_difference('MealsRecipe.count') do
      post :create, :meals_recipe => { }
    end

    assert_redirected_to meals_recipe_path(assigns(:meals_recipe))
  end

  test "should show meals_recipe" do
    get :show, :id => meals_recipes(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => meals_recipes(:one).id
    assert_response :success
  end

  test "should update meals_recipe" do
    put :update, :id => meals_recipes(:one).id, :meals_recipe => { }
    assert_redirected_to meals_recipe_path(assigns(:meals_recipe))
  end

  test "should destroy meals_recipe" do
    assert_difference('MealsRecipe.count', -1) do
      delete :destroy, :id => meals_recipes(:one).id
    end

    assert_redirected_to meals_recipes_path
  end
end
