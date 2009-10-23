require 'rubygems'
require 'dm-core'



class Ingredient
  include DataMapper::Resource

  property :ndb_no,                           Integer,            :key => true
  property :short_description,                String
  property :water,                            Float
  property :energy,                           Float
  property :protein,                          Float
  property :lipid_total,                      Float
  property :ash,                              Float
  property :carbohydrate,                     Float
  property :fiber,                            Float
  property :sugar,                            Float
  property :calcium,                          Float
  property :iron,                             Float
  property :magnesium,                        Float
  property :phosphorus,                       Float
  property :potassium,                        Float
  property :sodium,                           Float
  property :zinc,                             Float
  property :copper,                           Float
  property :manganese,                        Float
  property :selenium,                         Float
  property :vitamin_c,                        Float
  property :thiamin,                          Float
  property :riboflavin,                       Float
  property :niacin,                           Float
  property :panto_acid,                       Float
  property :vitamin_b6,                       Float
  property :folate_total,                     Float
  property :folic,                            Float
  property :food_folate,                      Float
  property :folate_dfe,                       Float
  property :choline_total,                    Float
  property :vitamine_b12,                     Float
  property :vitamin_a_iu,                     Float
  property :vitamin_a_rae,                    Float
  property :retinol,                          Float
  property :alpha_carotene,                   Float
  property :beta_carotene,                    Float
  property :beta_cryptoxanthin,               Float
  property :lycopene,                         Float
  property :lutien_and_zeazanthin,            Float
  property :vitamin_e,                        Float
  property :vitamin_d_mcg,                    Float
  property :vitamin_d_iu,                     Float
  property :vitamin_k,                        Float
  property :saturated_fat,                    Float
  property :monounsatruated_fat,              Float
  property :polyunsaturated_fat,              Float
  property :cholesterol,                      Float
  property :household_weight_1,               Float
  property :household_weight__1_description,  String
  property :household_weight_2,               Float
  property :household_weight__2_description,  String
  property :refuse_percent,                   Float
  
end