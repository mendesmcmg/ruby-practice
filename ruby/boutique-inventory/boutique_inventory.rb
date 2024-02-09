# frozen_string_literal: true

class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item[:name] }.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size] == {} }
  end

  def stock_for_item(name)
    it = @items.select { |item| item[:name] == name }[0]
    it[:quantity_by_size]
  end

  def total_stock
    @items.map { |item| item[:quantity_by_size].values.sum }.sum
  end

  private

  attr_reader :items
end
