class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor =  self
  end

  def patients
    @appointments.collect {|appointment| appointment.patient}
  end
end