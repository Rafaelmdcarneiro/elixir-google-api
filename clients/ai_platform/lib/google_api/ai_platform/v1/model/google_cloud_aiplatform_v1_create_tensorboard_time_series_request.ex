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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateTensorboardTimeSeriesRequest do
  @moduledoc """
  Request message for TensorboardService.CreateTensorboardTimeSeries.

  ## Attributes

  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the TensorboardRun to create the TensorboardTimeSeries in. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}/runs/{run}`
  *   `tensorboardTimeSeries` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeries.t`, *default:* `nil`) - Required. The TensorboardTimeSeries to create.
  *   `tensorboardTimeSeriesId` (*type:* `String.t`, *default:* `nil`) - Optional. The user specified unique ID to use for the TensorboardTimeSeries, which becomes the final component of the TensorboardTimeSeries's resource name. This value should match "a-z0-9{0, 127}"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parent => String.t() | nil,
          :tensorboardTimeSeries =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeries.t() | nil,
          :tensorboardTimeSeriesId => String.t() | nil
        }

  field(:parent)

  field(:tensorboardTimeSeries,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeries
  )

  field(:tensorboardTimeSeriesId)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateTensorboardTimeSeriesRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateTensorboardTimeSeriesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateTensorboardTimeSeriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
