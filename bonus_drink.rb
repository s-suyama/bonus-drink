class BonusDrink
  def self.total_count_for(amount)
    total_count = 0
    full_drink = amount

    while full_drink >= 3 do
      # まだ飲んでないdrinkの本数を３で割った商がおまけでもらえるdrinkとなる
      bonus_drink, remainder = full_drink.divmod(3)

      # おまけをもらうのに飲んだ本数を合計で飲んで本数に加算する
      empty_drink = 3 * bonus_drink
      total_count += empty_drink

      # おまけでもらったdrinkと3で割った余りをまだ飲んでいないdrinkとする
      full_drink = bonus_drink + remainder
    end

    # 最後に３での除算を繰り返して最終的に余った本数を合計に加算する
    total_count += full_drink

    total_count
  end
end
