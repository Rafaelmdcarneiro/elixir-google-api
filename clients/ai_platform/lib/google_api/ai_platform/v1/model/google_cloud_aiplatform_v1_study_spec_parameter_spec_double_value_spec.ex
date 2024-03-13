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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec do
  @moduledoc """
  Value specification for a parameter in `DOUBLE` type.

  ## Attributes

  *   `defaultValue` (*type:* `float()`, *default:* `nil`) - A default value for a `DOUBLE` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  *   `maxValue` (*type:* `float()`, *default:* `nil`) - Required. Inclusive maximum value of the parameter.
  *   `minValue` (*type:* `float()`, *default:* `nil`) - Required. Inclusive minimum value of the parameter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultValue => float() | nil,
          :maxValue => float() | nil,
          :minValue => float() | nil
        }

  field(:defaultValue)
  field(:maxValue)
  field(:minValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
