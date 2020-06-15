require 'pry'

class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.find {|project| project == self}
      backer.back_project(self)
    end
  end

end
