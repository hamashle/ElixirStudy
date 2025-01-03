defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount * (1.0 - 0.01 * discount)
  end

  def monthly_rate(hourly_rate, discount) do
    daily = daily_rate(hourly_rate) * 22.0
    ceil(apply_discount(daily, discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)
  end
end
