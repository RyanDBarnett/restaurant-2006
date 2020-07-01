class Restaurant

  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    "#{@opening_time.to_i + hours}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i < 12
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(hours)
    time = closing_time(hours)
    time_abbreviation = time.to_i < 12 ? "AM" : "PM"
    display_time = "#{time.to_i % 12}:00#{time_abbreviation}"
    "#{@name} will be closing at #{display_time}"
  end
end
