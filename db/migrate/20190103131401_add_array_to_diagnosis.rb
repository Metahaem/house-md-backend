class AddArrayToDiagnosis < ActiveRecord::Migration[5.2]
  def change
    add_column :diagnoses, :symptom_ids, :text, array: true, default: [].to_yaml
  end
end
