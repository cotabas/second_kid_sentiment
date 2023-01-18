require "application_system_test_case"

class KidVotesTest < ApplicationSystemTestCase
  setup do
    @kid_vote = kid_votes(:one)
  end

  test "visiting the index" do
    visit kid_votes_url
    assert_selector "h1", text: "Kid votes"
  end

  test "should create kid vote" do
    visit kid_votes_url
    click_on "New kid vote"

    fill_in "User", with: @kid_vote.user_id
    check "Vote" if @kid_vote.vote
    click_on "Create Kid vote"

    assert_text "Kid vote was successfully created"
    click_on "Back"
  end

  test "should update Kid vote" do
    visit kid_vote_url(@kid_vote)
    click_on "Edit this kid vote", match: :first

    fill_in "User", with: @kid_vote.user_id
    check "Vote" if @kid_vote.vote
    click_on "Update Kid vote"

    assert_text "Kid vote was successfully updated"
    click_on "Back"
  end

  test "should destroy Kid vote" do
    visit kid_vote_url(@kid_vote)
    click_on "Destroy this kid vote", match: :first

    assert_text "Kid vote was successfully destroyed"
  end
end
