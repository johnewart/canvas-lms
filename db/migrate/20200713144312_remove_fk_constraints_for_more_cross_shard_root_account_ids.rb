#
# Copyright (C) 2020 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.
class RemoveFkConstraintsForMoreCrossShardRootAccountIds < ActiveRecord::Migration[5.2]
  tag :predeploy

  def change
    remove_foreign_key :access_tokens, :accounts, column: :root_account_id, if_exists: true
    remove_foreign_key :rubric_associations, :accounts, column: :root_account_id, if_exists: true
  end
end
