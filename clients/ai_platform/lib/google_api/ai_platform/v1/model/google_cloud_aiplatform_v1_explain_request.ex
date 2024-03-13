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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplainRequest do
  @moduledoc """
  Request message for PredictionService.Explain.

  ## Attributes

  *   `deployedModelId` (*type:* `String.t`, *default:* `nil`) - If specified, this ExplainRequest will be served by the chosen DeployedModel, overriding Endpoint.traffic_split.
  *   `explanationSpecOverride` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpecOverride.t`, *default:* `nil`) - If specified, overrides the explanation_spec of the DeployedModel. Can be used for explaining prediction results with different configurations, such as: - Explaining top-5 predictions results as opposed to top-1; - Increasing path count or step count of the attribution methods to reduce approximate errors; - Using different baselines for explaining the prediction results.
  *   `instances` (*type:* `list(any())`, *default:* `nil`) - Required. The instances that are the input to the explanation call. A DeployedModel may have an upper limit on the number of instances it supports per request, and when it is exceeded the explanation call errors in case of AutoML Models, or, in case of customer created Models, the behaviour is as documented by that Model. The schema of any single instance may be specified via Endpoint's DeployedModels' Model's PredictSchemata's instance_schema_uri.
  *   `parameters` (*type:* `any()`, *default:* `nil`) - The parameters that govern the prediction. The schema of the parameters may be specified via Endpoint's DeployedModels' Model's PredictSchemata's parameters_schema_uri.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployedModelId => String.t() | nil,
          :explanationSpecOverride =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpecOverride.t() | nil,
          :instances => list(any()) | nil,
          :parameters => any() | nil
        }

  field(:deployedModelId)

  field(:explanationSpecOverride,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpecOverride
  )

  field(:instances, type: :list)
  field(:parameters)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplainRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplainRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplainRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
