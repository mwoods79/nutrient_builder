require 'ingredient'

class DatabaseBuilder

  
  def build(filename)
    File.open(filename, 'r') do |file|
      file.each_line do |ingredient|
        add_ingredient(ingredient)
      end
    end
  end


  private
  
  def add_ingredient(ingredient)
    properties = Array.new
    ingredient.chomp.each('^') do |string| 
      properties << string.chop.gsub(/~/, '')
    end
    save_ingredient(properties)
  end
  
  def save_ingredient(properties)
    ingredient = Ingredient.new
    ingredient.attributes = {
          :ndb_no                         => properties[0],
          :short_description              => properties[1],
          :water                          => properties[2],
          :energy                         => properties[3],
          :protein                        => properties[4],
          :lipid_total                    => properties[5],
          :ash                            => properties[6],
          :carbohydrate                   => properties[7],
          :fiber                          => properties[8],
          :sugar                          => properties[9],
          :calcium                        => properties[10],
          :iron                           => properties[11],
          :magnesium                      => properties[12],
          :phosphorus                     => properties[13],
          :potassium                      => properties[14],
          :sodium                         => properties[15],
          :zinc                           => properties[16],
          :copper                         => properties[17],
          :manganese                      => properties[18],
          :selenium                       => properties[19],
          :vitamin_c                      => properties[20],
          :thiamin                        => properties[21],
          :riboflavin                     => properties[22],
          :niacin                         => properties[23],
          :panto_acid                     => properties[24],
          :vitamin_b6                     => properties[25],
          :folate_total                   => properties[26],
          :folic                          => properties[27],
          :food_folate                    => properties[28],
          :folate_dfe                     => properties[29],
          :choline_total                  => properties[30],
          :vitamine_b12                   => properties[31],
          :vitamin_a_iu                   => properties[32],
          :vitamin_a_rae                  => properties[33],
          :retinol                        => properties[34],
          :alpha_carotene                 => properties[35],
          :beta_carotene                  => properties[36],
          :beta_cryptoxanthin             => properties[37],
          :lycopene                       => properties[38],
          :lutien_and_zeazanthin          => properties[39],
          :vitamin_e                      => properties[40],
          :vitamin_d_mcg                  => properties[41],
          :vitamin_d_iu                   => properties[42],
          :vitamin_k                      => properties[43],
          :saturated_fat                  => properties[44],
          :monounsatruated_fat            => properties[45],
          :polyunsaturated_fat            => properties[46],
          :cholesterol                    => properties[47],
          :household_weight_1             => properties[48],
          :household_weight_1_description => properties[49],
          :household_weight_2             => properties[50],
          :household_weight_2_description => properties[51],
          :refuse_percent                 => properties[52]
    }
    ingredient.save
  end
  
end
