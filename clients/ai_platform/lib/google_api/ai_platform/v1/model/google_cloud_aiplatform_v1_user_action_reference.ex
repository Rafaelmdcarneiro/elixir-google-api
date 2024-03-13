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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1UserActionReference do
  @moduledoc """
  References an API call. It contains more information about long running operation and Jobs that are triggered by the API call.

  ## Attributes

  *   `dataLabelingJob` (*type:* `String.t`, *default:* `nil`) - For API calls that start a LabelingJob. Resource name of the LabelingJob. Format: `projects/{project}/locations/{location}/dataLabelingJobs/{data_labeling_job}`
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method name of the API RPC call. For example, "/google.cloud.aiplatform.{apiVersion}.DatasetService.CreateDataset"
  *   `operation` (*type:* `String.t`, *default:* `nil`) - For API calls that return a long running operation. Resource name of the long running operation. Format: `projects/{project}/locations/{location}/operations/{operation}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataLabelingJob => String.t() | nil,
          :method => String.t() | nil,
          :operation => String.t() | nil
        }

  field(:dataLabelingJob)
  field(:method)
  field(:operation)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1UserActionReference do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1UserActionReference.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1UserActionReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
