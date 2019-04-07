module PositionsHelper
  def position_for_select
    Position.all.collect { |p| [p.name, p.id] }
  end
end
