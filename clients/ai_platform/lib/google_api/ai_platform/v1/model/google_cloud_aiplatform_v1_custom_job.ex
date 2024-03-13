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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJob do
  @moduledoc """
  Represents a job that runs custom workloads such as a Docker container or a Python package. A CustomJob can have multiple worker pools and each worker pool can have its own machine and input spec. A CustomJob will be cleaned up once the job enters terminal state (failed or succeeded).

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the CustomJob was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  *   `encryptionSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t`, *default:* `nil`) - Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the CustomJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  *   `error` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - Output only. Only populated when job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  *   `jobSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec.t`, *default:* `nil`) - Required. Job spec.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of a CustomJob.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the CustomJob for the first time entered the `JOB_STATE_RUNNING` state.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The detailed state of the job.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the CustomJob was most recently updated.
  *   `webAccessUris` (*type:* `map()`, *default:* `nil`) - Output only. URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if job_spec.enable_web_access is `true`. The keys are names of each node in the training job; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :encryptionSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t() | nil,
          :endTime => DateTime.t() | nil,
          :error => GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t() | nil,
          :jobSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :webAccessUris => map() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:encryptionSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec)
  field(:endTime, as: DateTime)
  field(:error, as: GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus)
  field(:jobSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec)
  field(:labels, type: :map)
  field(:name)
  field(:startTime, as: DateTime)
  field(:state)
  field(:updateTime, as: DateTime)
  field(:webAccessUris, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJob do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
