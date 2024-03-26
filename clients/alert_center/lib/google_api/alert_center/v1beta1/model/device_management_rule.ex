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

defmodule GoogleApi.AlertCenter.V1beta1.Model.DeviceManagementRule do
  @moduledoc """
  Alerts from Device Management Rules configured by Admin.

  ## Attributes

  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Required. The device ID.
  *   `deviceModel` (*type:* `String.t`, *default:* `nil`) - The model of the device.
  *   `deviceType` (*type:* `String.t`, *default:* `nil`) - The type of the device.
  *   `email` (*type:* `String.t`, *default:* `nil`) - The email of the user this alert was created for.
  *   `iosVendorId` (*type:* `String.t`, *default:* `nil`) - Required for iOS, empty for others.
  *   `ownerId` (*type:* `String.t`, *default:* `nil`) - Obfuscated ID of the owner of the device
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - The device resource ID.
  *   `ruleAction` (*type:* `String.t`, *default:* `nil`) - Action taken as result of the rule
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - The serial number of the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId => String.t() | nil,
          :deviceModel => String.t() | nil,
          :deviceType => String.t() | nil,
          :email => String.t() | nil,
          :iosVendorId => String.t() | nil,
          :ownerId => String.t() | nil,
          :resourceId => String.t() | nil,
          :ruleAction => String.t() | nil,
          :serialNumber => String.t() | nil
        }

  field(:deviceId)
  field(:deviceModel)
  field(:deviceType)
  field(:email)
  field(:iosVendorId)
  field(:ownerId)
  field(:resourceId)
  field(:ruleAction)
  field(:serialNumber)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.DeviceManagementRule do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.DeviceManagementRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.DeviceManagementRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
