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

defmodule GoogleApi.HealthCare.V1.Model.FhirConfig do
  @moduledoc """
  Specifies how to handle de-identification of a FHIR store.

  ## Attributes

  *   `defaultKeepExtensions` (*type:* `boolean()`, *default:* `nil`) - The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  *   `fieldMetadataList` (*type:* `list(GoogleApi.HealthCare.V1.Model.FieldMetadata.t)`, *default:* `nil`) - Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultKeepExtensions => boolean() | nil,
          :fieldMetadataList => list(GoogleApi.HealthCare.V1.Model.FieldMetadata.t()) | nil
        }

  field(:defaultKeepExtensions)
  field(:fieldMetadataList, as: GoogleApi.HealthCare.V1.Model.FieldMetadata, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.FhirConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.FhirConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.FhirConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
