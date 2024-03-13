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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponse do
  @moduledoc """
  Response message for [PredictionService.GenerateContent].

  ## Attributes

  *   `candidates` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Candidate.t)`, *default:* `nil`) - Output only. Generated candidates.
  *   `promptFeedback` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponsePromptFeedback.t`, *default:* `nil`) - Output only. Content filter results for a prompt sent in the request. Note: Sent only in the first stream chunk. Only happens when no candidates were generated due to content violations.
  *   `usageMetadata` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata.t`, *default:* `nil`) - Usage metadata about the response(s).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :candidates =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Candidate.t()) | nil,
          :promptFeedback =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponsePromptFeedback.t()
            | nil,
          :usageMetadata =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata.t()
            | nil
        }

  field(:candidates,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Candidate,
    type: :list
  )

  field(:promptFeedback,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponsePromptFeedback
  )

  field(:usageMetadata,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerateContentResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
