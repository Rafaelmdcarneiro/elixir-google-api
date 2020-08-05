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

defmodule GoogleApi.AndroidEnterprise.V1.Model.MaintenanceWindow do
  @moduledoc """
  Maintenance window for managed Google Play Accounts. This allows Play store to update the apps on the foreground in the designated window.

  ## Attributes

  *   `durationMs` (*type:* `String.t`, *default:* `nil`) - Duration of the maintenance window, in milliseconds. The duration must be between 30 minutes and 24 hours (inclusive).
  *   `startTimeAfterMidnightMs` (*type:* `String.t`, *default:* `nil`) - Start time of the maintenance window, in milliseconds after midnight on the device. Windows can span midnight.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :durationMs => String.t(),
          :startTimeAfterMidnightMs => String.t()
        }

  field(:durationMs)
  field(:startTimeAfterMidnightMs)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.MaintenanceWindow do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.MaintenanceWindow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.MaintenanceWindow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
