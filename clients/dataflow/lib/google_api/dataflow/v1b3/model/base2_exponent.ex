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

defmodule GoogleApi.Dataflow.V1b3.Model.Base2Exponent do
  @moduledoc """
  Exponential buckets where the growth factor between buckets is `2**(2**-scale)`. e.g. for `scale=1` growth factor is `2**(2**(-1))=sqrt(2)`. `n` buckets will have the following boundaries. - 0th: [0, gf) - i in [1, n-1]: [gf^(i), gf^(i+1))

  ## Attributes

  *   `numberOfBuckets` (*type:* `integer()`, *default:* `nil`) - Must be greater than 0.
  *   `scale` (*type:* `integer()`, *default:* `nil`) - Must be between -3 and 3. This forces the growth factor of the bucket boundaries to be between `2^(1/8)` and `256`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numberOfBuckets => integer() | nil,
          :scale => integer() | nil
        }

  field(:numberOfBuckets)
  field(:scale)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.Base2Exponent do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.Base2Exponent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.Base2Exponent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
