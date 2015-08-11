require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "GET /tasks" do
    it "display some tasks" do
      @task = Task.create :task => 'go to bed'

      visit tasks_path # route name followed by _path
      page.should have_content 'go to bed'

    end
  end
end
