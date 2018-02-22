class CreateBriefs < ActiveRecord::Migration[5.1]
  def change
    create_table :briefs do |t|
      t.string :name
      t.string :Company
      t.string :email

      t.text :about_your_company
      t.text :target_audience
      t.text :competitors
      t.text :project_purpose
      t.text :existing_site

      t.text :colour_scheme
      t.text :font_preference
      t.text :complexity
      t.text :look_and_feel
      t.text :additional_ideas

      t.text :design_examples_follow_1
      t.text :design_examples_follow_2
      t.text :design_examples_follow_3

      t.text :design_examples_reject_1
      t.text :design_examples_reject_2
      t.text :design_examples_reject_3

      t.text :additional_info
      t.text :referral_code
      t.timestamps
    end
  end
end
