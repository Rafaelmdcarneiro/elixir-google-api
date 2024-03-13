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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSlice do
  @moduledoc """
  A collection of metrics calculated by comparing Model's predictions on a slice of the test data against ground truth annotations.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this ModelEvaluationSlice was created.
  *   `metrics` (*type:* `any()`, *default:* `nil`) - Output only. Sliced evaluation metrics of the Model. The schema of the metrics is stored in metrics_schema_uri
  *   `metricsSchemaUri` (*type:* `String.t`, *default:* `nil`) - Output only. Points to a YAML file stored on Google Cloud Storage describing the metrics of this ModelEvaluationSlice. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject).
  *   `modelExplanation` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExplanation.t`, *default:* `nil`) - Output only. Aggregated explanation metrics for the Model's prediction output over the data this ModelEvaluation uses. This field is populated only if the Model is evaluated with explanations, and only for tabular Models.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the ModelEvaluationSlice.
  *   `slice` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSlice.t`, *default:* `nil`) - Output only. The slice of the test data that is used to evaluate the Model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :metrics => any() | nil,
          :metricsSchemaUri => String.t() | nil,
          :modelExplanation =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExplanation.t() | nil,
          :name => String.t() | nil,
          :slice =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSlice.t()
            | nil
        }

  field(:createTime, as: DateTime)
  field(:metrics)
  field(:metricsSchemaUri)

  field(:modelExplanation,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExplanation
  )

  field(:name)

  field(:slice, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSlice)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSlice do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSlice.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSlice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
