require_dependency 'issue'

Issue.class_eval do
  def spent_hours_by_activity
    self_and_descendants.
      joins("LEFT JOIN #{TimeEntry.table_name} ON #{TimeEntry.table_name}.issue_id = #{Issue.table_name}.id").
      group("#{TimeEntry.table_name}.activity_id").
      sum("#{TimeEntry.table_name}.hours")
  end
end
