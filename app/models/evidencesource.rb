class EvidenceSource < ActiveRecord::Base
    attr_accessible :articleID, :title, :author, :year, :source, :doi, :issueNo, :volume, :pageNo, :submitter, :submittedOn
end