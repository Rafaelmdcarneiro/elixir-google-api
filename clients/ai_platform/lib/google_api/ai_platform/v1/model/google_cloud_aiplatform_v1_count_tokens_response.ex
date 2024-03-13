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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensResponse do
  @moduledoc """
  Response message for PredictionService.CountTokens.

  ## Attributes

  *   `totalBillableCharacters` (*type:* `integer()`, *default:* `nil`) - The total number of billable characters counted across all instances from the request.
  *   `totalTokens` (*type:* `integer()`, *default:* `nil`) - The total number of tokens counted across all instances from the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :totalBillableCharacters => integer() | nil,
          :totalTokens => integer() | nil
        }

  field(:totalBillableCharacters)
  field(:totalTokens)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
