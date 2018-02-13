class AddAccountIdToJobsAndSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :qbwc_jobs, :account_id, :integer, index: true
    add_column :qbwc_sessions, :account_id, :integer, index: true
  end
end
