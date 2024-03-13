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

defmodule GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionRaiInfo do
  @moduledoc """


  ## Attributes

  *   `raiCategories` (*type:* `list(String.t)`, *default:* `nil`) - List of rai categories' information to return
  *   `scores` (*type:* `list(number())`, *default:* `nil`) - List of rai scores mapping to the rai categories. Rounded to 1 decimal place.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :raiCategories => list(String.t()) | nil,
          :scores => list(number()) | nil
        }

  field(:raiCategories, type: :list)
  field(:scores, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionRaiInfo do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionRaiInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionRaiInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
