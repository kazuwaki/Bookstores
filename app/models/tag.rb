class Tag < ApplicationRecord
  enum booktype: { novels: 0, fiction: 1, non_fiction: 2, manga: 3 }
end
