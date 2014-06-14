class RenameTableEMail < ActiveRecord::Migration
  def change
    	rename_table :e_mail, :e_mails
  end
end
