require "pry"

class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    if !project.backers.find {|backer| backer == self}
      project.add_backer(self)
    end
  end

end
