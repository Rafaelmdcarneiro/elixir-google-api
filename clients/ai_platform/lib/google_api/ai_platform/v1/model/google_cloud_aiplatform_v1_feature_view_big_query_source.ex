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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewBigQuerySource do
  @moduledoc """


  ## Attributes

  *   `entityIdColumns` (*type:* `list(String.t)`, *default:* `nil`) - Required. Columns to construct entity_id / row keys.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Required. The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityIdColumns => list(String.t()) | nil,
          :uri => String.t() | nil
        }

  field(:entityIdColumns, type: :list)
  field(:uri)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewBigQuerySource do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewBigQuerySource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewBigQuerySource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
