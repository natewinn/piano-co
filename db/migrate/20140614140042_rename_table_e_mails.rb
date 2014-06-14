class RenameTableEMails < ActiveRecord::Migration
  def change
    rename_table :e_mails, :eaddresses  
  end
end
