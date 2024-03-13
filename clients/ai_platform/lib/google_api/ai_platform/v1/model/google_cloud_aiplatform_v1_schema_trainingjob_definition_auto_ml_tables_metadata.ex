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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesMetadata do
  @moduledoc """
  Model metadata specific to AutoML Tables.

  ## Attributes

  *   `evaluatedDataItemsBigqueryUri` (*type:* `String.t`, *default:* `nil`) - BigQuery destination uri for exported evaluated examples.
  *   `trainCostMilliNodeHours` (*type:* `String.t`, *default:* `nil`) - Output only. The actual training cost of the model, expressed in milli node hours, i.e. 1,000 value in this field means 1 node hour. Guaranteed to not exceed the train budget.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evaluatedDataItemsBigqueryUri => String.t() | nil,
          :trainCostMilliNodeHours => String.t() | nil
        }

  field(:evaluatedDataItemsBigqueryUri)
  field(:trainCostMilliNodeHours)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesMetadata do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
