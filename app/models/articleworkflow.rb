class ArticleWorkflow < ActiveRecord::Base
    attr_accessible :articleID, :workflow_ID, :implementor, :impl_On
end