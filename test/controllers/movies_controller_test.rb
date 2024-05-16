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

  test "show" do
    get "/movies/#{Movie.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "director", "release_year", "imdb_score"], data.keys
  end

  test "update" do
    movie = Movie.first
    patch "/movies/#{movie.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Movie.count", -1 do
      delete "/movies/#{Movie.first.id}.json"
      assert_response 200
    end
  end


end
