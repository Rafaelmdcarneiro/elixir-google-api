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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ContainerSpec do
  @moduledoc """
  The spec of a Container.

  ## Attributes

  *   `args` (*type:* `list(String.t)`, *default:* `nil`) - The arguments to be passed when starting the container.
  *   `command` (*type:* `list(String.t)`, *default:* `nil`) - The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  *   `env` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EnvVar.t)`, *default:* `nil`) - Environment variables to be passed to the container. Maximum limit is 100.
  *   `imageUri` (*type:* `String.t`, *default:* `nil`) - Required. The URI of a container image in the Container Registry that is to be run on each worker replica.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :args => list(String.t()) | nil,
          :command => list(String.t()) | nil,
          :env => list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EnvVar.t()) | nil,
          :imageUri => String.t() | nil
        }

  field(:args, type: :list)
  field(:command, type: :list)
  field(:env, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EnvVar, type: :list)
  field(:imageUri)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ContainerSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ContainerSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ContainerSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
