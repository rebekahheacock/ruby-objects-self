# Define a Person class
class Person
  attr_reader :status

  def initialize
    @status = nil
  end

  # custom setter method
  # lets us put extra lines of code in the method
  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it
    %x{ say "Status changed to #{status}" }
  end

  def log_in
    # can't use status without self. here
    # because we're calling a SETTER method
    # can skip using self. when calling a GETTER method
    self.status = 'online'
  end

  def log_out
    # Problem:
    # Will not call the setter method to and notify, or say, that the status
    # has changed!
    @status = 'offline'
  end
end
