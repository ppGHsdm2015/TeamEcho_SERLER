class Role < ActiveRecord::Base
	attr_accessible :roleID, :rolename, :edit_user, :modify_masters, :allow_mod, :allow_analysis, :allow_scrh
end
