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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QueryDeployedModelsResponse do
  @moduledoc """
  Response message for QueryDeployedModels method.

  ## Attributes

  *   `deployedModelRefs` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModelRef.t)`, *default:* `nil`) - References to the DeployedModels that share the specified deploymentResourcePool.
  *   `deployedModels` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel.t)`, *default:* `nil`) - DEPRECATED Use deployed_model_refs instead.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `totalDeployedModelCount` (*type:* `integer()`, *default:* `nil`) - The total number of DeployedModels on this DeploymentResourcePool.
  *   `totalEndpointCount` (*type:* `integer()`, *default:* `nil`) - The total number of Endpoints that have DeployedModels on this DeploymentResourcePool.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployedModelRefs =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModelRef.t()) | nil,
          :deployedModels =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel.t()) | nil,
          :nextPageToken => String.t() | nil,
          :totalDeployedModelCount => integer() | nil,
          :totalEndpointCount => integer() | nil
        }

  field(:deployedModelRefs,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModelRef,
    type: :list
  )

  field(:deployedModels,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel,
    type: :list
  )

  field(:nextPageToken)
  field(:totalDeployedModelCount)
  field(:totalEndpointCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QueryDeployedModelsResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QueryDeployedModelsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QueryDeployedModelsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
