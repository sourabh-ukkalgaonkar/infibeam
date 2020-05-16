# frozen_string_literal: true

class Person
  MONTHS = 12

  def initialize(salary, cumulative_salary)
    @salary = salary
    @cumulative_salary = cumulative_salary

    return unless [@salary, @cumulative_salary].include?(0)

    raise PersonInvalidInputError, 'invalid input'
  end

  def calculate_month
    sum = 0
    amount = 0
    loop do
      sum += 1
      amount += @salary
      break if amount == @cumulative_salary
      if amount > @cumulative_salary
        raise PersonInvalidInputError, 'invalid input'
      end
    end
    sum % MONTHS
  end

  class PersonInvalidInputError < StandardError; end
end

puts 'Enter salary'
salary = gets.chomp.to_i

puts 'Enter Cumulative Salary'
cumulative_salary = gets.chomp.to_i
begin
  person = Person.new(salary, cumulative_salary)
  puts person.calculate_month
rescue StandardError => e
  puts e.message
end
