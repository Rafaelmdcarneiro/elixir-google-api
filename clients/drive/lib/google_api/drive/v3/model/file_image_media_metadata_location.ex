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

defmodule GoogleApi.Drive.V3.Model.FileImageMediaMetadataLocation do
  @moduledoc """
  Geographic location information stored in the image.

  ## Attributes

  *   `altitude` (*type:* `float()`, *default:* `nil`) - The altitude stored in the image.
  *   `latitude` (*type:* `float()`, *default:* `nil`) - The latitude stored in the image.
  *   `longitude` (*type:* `float()`, *default:* `nil`) - The longitude stored in the image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altitude => float() | nil,
          :latitude => float() | nil,
          :longitude => float() | nil
        }

  field(:altitude)
  field(:latitude)
  field(:longitude)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.FileImageMediaMetadataLocation do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.FileImageMediaMetadataLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.FileImageMediaMetadataLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
