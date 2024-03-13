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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfig do
  @moduledoc """
  The configuration for grounding checking.

  ## Attributes

  *   `disableAttribution` (*type:* `boolean()`, *default:* `nil`) - If set, skip finding claim attributions (i.e not generate grounding citation).
  *   `sources` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfigSourceEntry.t)`, *default:* `nil`) - The sources for the grounding checking.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableAttribution => boolean() | nil,
          :sources =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfigSourceEntry.t()
            )
            | nil
        }

  field(:disableAttribution)

  field(:sources,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfigSourceEntry,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
