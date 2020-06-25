require 'pry'
class Patient
    attr_accessor :appointment
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end
end