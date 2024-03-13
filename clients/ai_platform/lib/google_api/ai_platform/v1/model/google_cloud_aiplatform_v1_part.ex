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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Part do
  @moduledoc """
  A datatype containing media that is part of a multi-part `Content` message. A `Part` consists of data which has an associated datatype. A `Part` can only contain one of the accepted types in `Part.data`. A `Part` must have a fixed IANA MIME type identifying the type and subtype of the media if `inline_data` or `file_data` field is filled with raw bytes.

  ## Attributes

  *   `fileData` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FileData.t`, *default:* `nil`) - Optional. URI based data.
  *   `functionCall` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionCall.t`, *default:* `nil`) - Optional. A predicted [FunctionCall] returned from the model that contains a string representing the [FunctionDeclaration.name] with the parameters and their values.
  *   `functionResponse` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionResponse.t`, *default:* `nil`) - Optional. The result output of a [FunctionCall] that contains a string representing the [FunctionDeclaration.name] and a structured JSON object containing any output from the function call. It is used as context to the model.
  *   `inlineData` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Blob.t`, *default:* `nil`) - Optional. Inlined bytes data.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Optional. Text part (can be code).
  *   `videoMetadata` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VideoMetadata.t`, *default:* `nil`) - Optional. Video metadata. The metadata should only be specified while the video data is presented in inline_data or file_data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileData => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FileData.t() | nil,
          :functionCall =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionCall.t() | nil,
          :functionResponse =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionResponse.t() | nil,
          :inlineData => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Blob.t() | nil,
          :text => String.t() | nil,
          :videoMetadata =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VideoMetadata.t() | nil
        }

  field(:fileData, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FileData)
  field(:functionCall, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionCall)

  field(:functionResponse,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionResponse
  )

  field(:inlineData, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Blob)
  field(:text)
  field(:videoMetadata, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VideoMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Part do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Part.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Part do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
