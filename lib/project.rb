

class Project

attr_accessor :title, :backers

  def initialize(title)
    @title  = title
    @backers = []
  end

def add_backer(backer)
  @backers << backer
  project_array = backer.backed_projects
  if !project_array.find {|project| project == self}
    backer.back_project(self)
  end
end



end
