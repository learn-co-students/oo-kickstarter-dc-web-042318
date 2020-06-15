

class Backer

attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

def back_project(project)
  @backed_projects << project
  backer_array = project.backers
  if !backer_array.find {|backer| backer == self}
    project.add_backer(self)
  end
end


end
