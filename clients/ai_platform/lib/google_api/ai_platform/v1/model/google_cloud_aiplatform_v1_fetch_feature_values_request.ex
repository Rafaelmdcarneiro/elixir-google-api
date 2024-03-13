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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FetchFeatureValuesRequest do
  @moduledoc """
  Request message for FeatureOnlineStoreService.FetchFeatureValues. All the features under the requested feature view will be returned.

  ## Attributes

  *   `dataFormat` (*type:* `String.t`, *default:* `nil`) - Optional. Response data format. If not set, FeatureViewDataFormat.KEY_VALUE will be used.
  *   `dataKey` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewDataKey.t`, *default:* `nil`) - Optional. The request key to fetch feature values for.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataFormat => String.t() | nil,
          :dataKey =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewDataKey.t() | nil
        }

  field(:dataFormat)
  field(:dataKey, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewDataKey)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FetchFeatureValuesRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FetchFeatureValuesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FetchFeatureValuesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
