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

defmodule GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult do
  @moduledoc """
  The recitation result for each segment in a given input.

  ## Attributes

  *   `attributionDataset` (*type:* `String.t`, *default:* `nil`) - The dataset the segment came from.
  *   `displayAttributionMessage` (*type:* `String.t`, *default:* `nil`) - human-friendly string that contains information from doc_attribution which could be shown by clients
  *   `docAttribution` (*type:* `GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationDocAttribution.t`, *default:* `nil`) - populated when recitation_action == CITE
  *   `docOccurrences` (*type:* `integer()`, *default:* `nil`) - number of documents that contained this segment
  *   `endIndex` (*type:* `integer()`, *default:* `nil`) - 
  *   `rawText` (*type:* `String.t`, *default:* `nil`) - The raw text in the given input that is corresponding to the segment. It will be available only when 'return_segment_raw_text' is enabled in the request options.
  *   `segmentRecitationAction` (*type:* `String.t`, *default:* `nil`) - 
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - The segment boundary start (inclusive) and end index (exclusive) in the given text. In the streaming RPC, the indexes always start from the beginning of the first text in the entire stream. The indexes are measured in UTF-16 code units.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributionDataset => String.t() | nil,
          :displayAttributionMessage => String.t() | nil,
          :docAttribution =>
            GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationDocAttribution.t() | nil,
          :docOccurrences => integer() | nil,
          :endIndex => integer() | nil,
          :rawText => String.t() | nil,
          :segmentRecitationAction => String.t() | nil,
          :startIndex => integer() | nil
        }

  field(:attributionDataset)
  field(:displayAttributionMessage)
  field(:docAttribution, as: GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationDocAttribution)
  field(:docOccurrences)
  field(:endIndex)
  field(:rawText)
  field(:segmentRecitationAction)
  field(:startIndex)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
