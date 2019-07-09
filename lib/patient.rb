require 'pry'
class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    # @appointments = appointments
    # @doctors = doctors
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
    # binding.pry
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    appointments.collect do |appt|
      appt.doctor
    end
  end

end
