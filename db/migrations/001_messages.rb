Sequel.migration do
  change do
    create_table :messages do
      primary_key :id
    end
  end
end
