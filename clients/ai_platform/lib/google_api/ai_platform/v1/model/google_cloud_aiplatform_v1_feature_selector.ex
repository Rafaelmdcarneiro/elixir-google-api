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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureSelector do
  @moduledoc """
  Selector for Features of an EntityType.

  ## Attributes

  *   `idMatcher` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IdMatcher.t`, *default:* `nil`) - Required. Matches Features based on ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :idMatcher => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IdMatcher.t() | nil
        }

  field(:idMatcher, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IdMatcher)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureSelector do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureSelector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureSelector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
