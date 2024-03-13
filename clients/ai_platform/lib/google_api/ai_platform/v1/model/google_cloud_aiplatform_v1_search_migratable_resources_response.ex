# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SearchMigratableResourcesResponse do
  @moduledoc """
  Response message for MigrationService.SearchMigratableResources.

  ## Attributes

  *   `migratableResources` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResource.t)`, *default:* `nil`) - All migratable resources that can be migrated to the location specified in the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The standard next-page token. The migratable_resources may not fill page_size in SearchMigratableResourcesRequest even when there are subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :migratableResources =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResource.t())
            | nil,
          :nextPageToken => String.t() | nil
        }

  field(:migratableResources,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResource,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SearchMigratableResourcesResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SearchMigratableResourcesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SearchMigratableResourcesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
