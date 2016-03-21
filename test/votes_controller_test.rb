require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  test 'vote by current_user' do
    get '/votes/new'

    ApplicationController.stub_any_instance(:current_user, roles(:alice_voter)) do
      post votes_url, params: { vote: { candidate_id: roles(:bob_candidate).id, comment: 'thank you' } }
      # XXX Vote.first だと期待しないデータがとれてしまうことが今後あるかもしれない
      assert_equal roles(:alice_voter).id, Vote.first.voter_id
    end
  end
end
