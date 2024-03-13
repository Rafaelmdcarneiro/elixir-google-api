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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborQueryParameters do
  @moduledoc """
  Parameters that can be overrided in each query to tune query latency and recall.

  ## Attributes

  *   `approximateNeighborCandidates` (*type:* `integer()`, *default:* `nil`) - Optional. The number of neighbors to find via approximate search before exact reordering is performed; if set, this value must be > neighbor_count.
  *   `leafNodesSearchFraction` (*type:* `float()`, *default:* `nil`) - Optional. The fraction of the number of leaves to search, set at query time allows user to tune search performance. This value increase result in both search accuracy and latency increase. The value should be between 0.0 and 1.0.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :approximateNeighborCandidates => integer() | nil,
          :leafNodesSearchFraction => float() | nil
        }

  field(:approximateNeighborCandidates)
  field(:leafNodesSearchFraction)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborQueryParameters do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborQueryParameters.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborQueryParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
