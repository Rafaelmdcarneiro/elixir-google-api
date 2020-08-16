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

defmodule GoogleApi.Container.V1.Model.SetLoggingServiceRequest do
  @moduledoc """
  SetLoggingServiceRequest sets the logging service of a cluster.

  ## Attributes

  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
  *   `loggingService` (*type:* `String.t`, *default:* `nil`) - Required. The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name (project, location, cluster) of the cluster to set logging. Specified in the format `projects/*/locations/*/clusters/*`.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The Google Developers Console [project ID or project number](https://support.google.com/cloud/answer/6158840). This field has been deprecated and replaced by the name field.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterId => String.t(),
          :loggingService => String.t(),
          :name => String.t(),
          :projectId => String.t(),
          :zone => String.t()
        }

  field(:clusterId)
  field(:loggingService)
  field(:name)
  field(:projectId)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.SetLoggingServiceRequest do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.SetLoggingServiceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.SetLoggingServiceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
