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

defmodule GoogleApi.PubSubLite.V1.Model.ExportConfig do
  @moduledoc """
  Configuration for a Pub/Sub Lite subscription that writes messages to a destination. User subscriber clients must not connect to this subscription.

  ## Attributes

  *   `currentState` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the export, which may be different to the desired state due to errors. This field is output only.
  *   `deadLetterTopic` (*type:* `String.t`, *default:* `nil`) - Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  *   `desiredState` (*type:* `String.t`, *default:* `nil`) - The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  *   `pubsubConfig` (*type:* `GoogleApi.PubSubLite.V1.Model.PubSubConfig.t`, *default:* `nil`) - Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentState => String.t() | nil,
          :deadLetterTopic => String.t() | nil,
          :desiredState => String.t() | nil,
          :pubsubConfig => GoogleApi.PubSubLite.V1.Model.PubSubConfig.t() | nil
        }

  field(:currentState)
  field(:deadLetterTopic)
  field(:desiredState)
  field(:pubsubConfig, as: GoogleApi.PubSubLite.V1.Model.PubSubConfig)
end

defimpl Poison.Decoder, for: GoogleApi.PubSubLite.V1.Model.ExportConfig do
  def decode(value, options) do
    GoogleApi.PubSubLite.V1.Model.ExportConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSubLite.V1.Model.ExportConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
