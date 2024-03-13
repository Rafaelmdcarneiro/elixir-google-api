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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchPredictionJobOutputConfig do
  @moduledoc """
  Configures the output of BatchPredictionJob. See Model.supported_output_storage_formats for supported output formats, and how predictions are expressed via any of them.

  ## Attributes

  *   `bigqueryDestination` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQueryDestination.t`, *default:* `nil`) - The BigQuery project or dataset location where the output is to be written to. If project is provided, a new dataset is created with name `prediction__` where is made BigQuery-dataset-name compatible (for example, most special characters become underscores), and timestamp is in YYYY_MM_DDThh_mm_ss_sssZ "based on ISO-8601" format. In the dataset two tables will be created, `predictions`, and `errors`. If the Model has both instance and prediction schemata defined then the tables have columns as follows: The `predictions` table contains instances for which the prediction succeeded, it has columns as per a concatenation of the Model's instance and prediction schemata. The `errors` table contains rows for which the prediction has failed, it has instance columns, as per the instance schema, followed by a single "errors" column, which as values has google.rpc.Status represented as a STRUCT, and containing only `code` and `message`.
  *   `gcsDestination` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination.t`, *default:* `nil`) - The Cloud Storage location of the directory where the output is to be written to. In the given directory a new directory is created. Its name is `prediction--`, where timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format. Inside of it files `predictions_0001.`, `predictions_0002.`, ..., `predictions_N.` are created where `` depends on chosen predictions_format, and N may equal 0001 and depends on the total number of successfully predicted instances. If the Model has both instance and prediction schemata defined then each such file contains predictions as per the predictions_format. If prediction for any instance failed (partially or completely), then an additional `errors_0001.`, `errors_0002.`,..., `errors_N.` files are created (N depends on total number of failed predictions). These files contain the failed instances, as per their schema, followed by an additional `error` field which as value has google.rpc.Status containing only `code` and `message` fields.
  *   `predictionsFormat` (*type:* `String.t`, *default:* `nil`) - Required. The format in which Vertex AI gives the predictions, must be one of the Model's supported_output_storage_formats.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryDestination =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQueryDestination.t() | nil,
          :gcsDestination =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination.t() | nil,
          :predictionsFormat => String.t() | nil
        }

  field(:bigqueryDestination,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQueryDestination
  )

  field(:gcsDestination, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination)
  field(:predictionsFormat)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchPredictionJobOutputConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchPredictionJobOutputConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchPredictionJobOutputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
