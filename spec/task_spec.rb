require("spec_helper")

describe(Task) do

  describe(".not_done") do
    it("returns the not done tasks") do
      not_done_task1 = Task.create({:description => "words here", :done => false})
      not_done_task2 = Task.create({:description => "more words here", :done => false})
      not_done_tasks = [not_done_task1, not_done_task2]
      done_task = Task.create({:description => "testing testing blah blah", :done => true})
      expect(Task.not_done()).to(eq(not_done_tasks))
    end
  end

end
