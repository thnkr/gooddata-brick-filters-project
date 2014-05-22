GoodData::Model::ProjectBuilder.create("Brick Tutorial Project") do |p|

    p.add_dataset("employees") do |d|
        d.add_anchor("user_id")
        d.add_attribute("department")
        d.add_label("name", :reference => "user_id")

    end

    p.add_dataset("sales") do |d|
        d.add_fact("amount")
        d.add_reference("user_id", :dataset => 'employees', :reference => 'user_id')
    end

end