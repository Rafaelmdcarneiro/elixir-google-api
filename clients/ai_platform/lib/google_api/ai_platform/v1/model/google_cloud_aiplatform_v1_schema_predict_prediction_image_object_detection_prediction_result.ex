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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionImageObjectDetectionPredictionResult do
  @moduledoc """
  Prediction output format for Image Object Detection.

  ## Attributes

  *   `bboxes` (*type:* `list(list(any()))`, *default:* `nil`) - Bounding boxes, i.e. the rectangles over the image, that pinpoint the found AnnotationSpecs. Given in order that matches the IDs. Each bounding box is an array of 4 numbers `xMin`, `xMax`, `yMin`, and `yMax`, which represent the extremal coordinates of the box. They are relative to the image size, and the point 0,0 is in the top left of the image.
  *   `confidences` (*type:* `list(number())`, *default:* `nil`) - The Model's confidences in correctness of the predicted IDs, higher value means higher confidence. Order matches the Ids.
  *   `displayNames` (*type:* `list(String.t)`, *default:* `nil`) - The display names of the AnnotationSpecs that had been identified, order matches the IDs.
  *   `ids` (*type:* `list(String.t)`, *default:* `nil`) - The resource IDs of the AnnotationSpecs that had been identified, ordered by the confidence score descendingly.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bboxes => list(list(any())) | nil,
          :confidences => list(number()) | nil,
          :displayNames => list(String.t()) | nil,
          :ids => list(String.t()) | nil
        }

  field(:bboxes, type: :listlist)
  field(:confidences, type: :list)
  field(:displayNames, type: :list)
  field(:ids, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionImageObjectDetectionPredictionResult do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionImageObjectDetectionPredictionResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionImageObjectDetectionPredictionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
