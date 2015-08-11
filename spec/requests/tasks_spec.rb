require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "GET /tasks" do
    it "display some tasks" do
      visit tasks_path # route name followed by _path
    end
  end
end
