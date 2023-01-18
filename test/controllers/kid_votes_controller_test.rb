require "test_helper"

class KidVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kid_vote = kid_votes(:one)
  end

  test "should get index" do
    get kid_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_kid_vote_url
    assert_response :success
  end

  test "should create kid_vote" do
    assert_difference("KidVote.count") do
      post kid_votes_url, params: { kid_vote: { user_id: @kid_vote.user_id, vote: @kid_vote.vote } }
    end

    assert_redirected_to kid_vote_url(KidVote.last)
  end

  test "should show kid_vote" do
    get kid_vote_url(@kid_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_kid_vote_url(@kid_vote)
    assert_response :success
  end

  test "should update kid_vote" do
    patch kid_vote_url(@kid_vote), params: { kid_vote: { user_id: @kid_vote.user_id, vote: @kid_vote.vote } }
    assert_redirected_to kid_vote_url(@kid_vote)
  end

  test "should destroy kid_vote" do
    assert_difference("KidVote.count", -1) do
      delete kid_vote_url(@kid_vote)
    end

    assert_redirected_to kid_votes_url
  end
end
