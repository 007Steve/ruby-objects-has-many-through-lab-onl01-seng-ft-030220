class Doctor
  
  attr_accessor :name 
  
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end
  def self.all
    @@all
  end
  
  def appointments
    Appointments.all{|appointment| appointment.doctor == self}
  end
end