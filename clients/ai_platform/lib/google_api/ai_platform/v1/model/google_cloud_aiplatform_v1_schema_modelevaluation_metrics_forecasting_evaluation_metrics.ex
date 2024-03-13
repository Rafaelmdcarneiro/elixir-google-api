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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetrics do
  @moduledoc """
  Metrics for forecasting evaluation results.

  ## Attributes

  *   `meanAbsoluteError` (*type:* `number()`, *default:* `nil`) - Mean Absolute Error (MAE).
  *   `meanAbsolutePercentageError` (*type:* `number()`, *default:* `nil`) - Mean absolute percentage error. Infinity when there are zeros in the ground truth.
  *   `quantileMetrics` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetricsQuantileMetricsEntry.t)`, *default:* `nil`) - The quantile metrics entries for each quantile.
  *   `rSquared` (*type:* `number()`, *default:* `nil`) - Coefficient of determination as Pearson correlation coefficient. Undefined when ground truth or predictions are constant or near constant.
  *   `rootMeanSquaredError` (*type:* `number()`, *default:* `nil`) - Root Mean Squared Error (RMSE).
  *   `rootMeanSquaredLogError` (*type:* `number()`, *default:* `nil`) - Root mean squared log error. Undefined when there are negative ground truth values or predictions.
  *   `rootMeanSquaredPercentageError` (*type:* `number()`, *default:* `nil`) - Root Mean Square Percentage Error. Square root of MSPE. Undefined/imaginary when MSPE is negative.
  *   `weightedAbsolutePercentageError` (*type:* `number()`, *default:* `nil`) - Weighted Absolute Percentage Error. Does not use weights, this is just what the metric is called. Undefined if actual values sum to zero. Will be very large if actual values sum to a very small number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :meanAbsoluteError => number() | nil,
          :meanAbsolutePercentageError => number() | nil,
          :quantileMetrics =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetricsQuantileMetricsEntry.t()
            )
            | nil,
          :rSquared => number() | nil,
          :rootMeanSquaredError => number() | nil,
          :rootMeanSquaredLogError => number() | nil,
          :rootMeanSquaredPercentageError => number() | nil,
          :weightedAbsolutePercentageError => number() | nil
        }

  field(:meanAbsoluteError)
  field(:meanAbsolutePercentageError)

  field(:quantileMetrics,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetricsQuantileMetricsEntry,
    type: :list
  )

  field(:rSquared)
  field(:rootMeanSquaredError)
  field(:rootMeanSquaredLogError)
  field(:rootMeanSquaredPercentageError)
  field(:weightedAbsolutePercentageError)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetrics do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
