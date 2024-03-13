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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionTextSentimentPredictionResult do
  @moduledoc """
  Prediction output format for Text Sentiment

  ## Attributes

  *   `sentiment` (*type:* `integer()`, *default:* `nil`) - The integer sentiment labels between 0 (inclusive) and sentimentMax label (inclusive), while 0 maps to the least positive sentiment and sentimentMax maps to the most positive one. The higher the score is, the more positive the sentiment in the text snippet is. Note: sentimentMax is an integer value between 1 (inclusive) and 10 (inclusive).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sentiment => integer() | nil
        }

  field(:sentiment)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionTextSentimentPredictionResult do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionTextSentimentPredictionResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionTextSentimentPredictionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
