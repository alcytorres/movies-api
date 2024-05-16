require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/movies.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Movie.count, data.length
  end

  test "create" do
    assert_difference "Movie.count", 1 do
      post "/movies.json", params: { title: "Inception", director: "Christopher Noland", release_year: 2010, imdb_score: 8.8 }
      assert_response 200
    end
  end


end
