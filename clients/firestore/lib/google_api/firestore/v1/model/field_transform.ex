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

defmodule GoogleApi.Firestore.V1.Model.FieldTransform do
  @moduledoc """
  A transformation of a field of the document.

  ## Attributes

  *   `appendMissingElements` (*type:* `GoogleApi.Firestore.V1.Model.ArrayValue.t`, *default:* `nil`) - Append the given elements in order if they are not already present in the current field value. If the field is not an array, or if the field does not yet exist, it is first set to the empty array. Equivalent numbers of different types (e.g. 3L and 3.0) are considered equal when checking if a value is missing. NaN is equal to NaN, and Null is equal to Null. If the input contains multiple equivalent values, only the first will be considered. The corresponding transform_result will be the null value.
  *   `fieldPath` (*type:* `String.t`, *default:* `nil`) - The path of the field. See Document.fields for the field path syntax reference.
  *   `increment` (*type:* `GoogleApi.Firestore.V1.Model.Value.t`, *default:* `nil`) - Adds the given value to the field's current value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the given value. If either of the given value or the current field value are doubles, both values will be interpreted as doubles. Double arithmetic and representation of double values follow IEEE 754 semantics. If there is positive/negative integer overflow, the field is resolved to the largest magnitude positive/negative integer.
  *   `maximum` (*type:* `GoogleApi.Firestore.V1.Model.Value.t`, *default:* `nil`) - Sets the field to the maximum of its current value and the given value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the given value. If a maximum operation is applied where the field and the input value are of mixed types (that is - one is an integer and one is a double) the field takes on the type of the larger operand. If the operands are equivalent (e.g. 3 and 3.0), the field does not change. 0, 0.0, and -0.0 are all zero. The maximum of a zero stored value and zero input value is always the stored value. The maximum of any numeric value x and NaN is NaN.
  *   `minimum` (*type:* `GoogleApi.Firestore.V1.Model.Value.t`, *default:* `nil`) - Sets the field to the minimum of its current value and the given value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the input value. If a minimum operation is applied where the field and the input value are of mixed types (that is - one is an integer and one is a double) the field takes on the type of the smaller operand. If the operands are equivalent (e.g. 3 and 3.0), the field does not change. 0, 0.0, and -0.0 are all zero. The minimum of a zero stored value and zero input value is always the stored value. The minimum of any numeric value x and NaN is NaN.
  *   `removeAllFromArray` (*type:* `GoogleApi.Firestore.V1.Model.ArrayValue.t`, *default:* `nil`) - Remove all of the given elements from the array in the field. If the field is not an array, or if the field does not yet exist, it is set to the empty array. Equivalent numbers of the different types (e.g. 3L and 3.0) are considered equal when deciding whether an element should be removed. NaN is equal to NaN, and Null is equal to Null. This will remove all equivalent values if there are duplicates. The corresponding transform_result will be the null value.
  *   `setToServerValue` (*type:* `String.t`, *default:* `nil`) - Sets the field to the given server value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appendMissingElements => GoogleApi.Firestore.V1.Model.ArrayValue.t() | nil,
          :fieldPath => String.t() | nil,
          :increment => GoogleApi.Firestore.V1.Model.Value.t() | nil,
          :maximum => GoogleApi.Firestore.V1.Model.Value.t() | nil,
          :minimum => GoogleApi.Firestore.V1.Model.Value.t() | nil,
          :removeAllFromArray => GoogleApi.Firestore.V1.Model.ArrayValue.t() | nil,
          :setToServerValue => String.t() | nil
        }

  field(:appendMissingElements, as: GoogleApi.Firestore.V1.Model.ArrayValue)
  field(:fieldPath)
  field(:increment, as: GoogleApi.Firestore.V1.Model.Value)
  field(:maximum, as: GoogleApi.Firestore.V1.Model.Value)
  field(:minimum, as: GoogleApi.Firestore.V1.Model.Value)
  field(:removeAllFromArray, as: GoogleApi.Firestore.V1.Model.ArrayValue)
  field(:setToServerValue)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.FieldTransform do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.FieldTransform.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.FieldTransform do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
