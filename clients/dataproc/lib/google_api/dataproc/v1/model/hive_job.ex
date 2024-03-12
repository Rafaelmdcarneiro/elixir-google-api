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

defmodule GoogleApi.Dataproc.V1.Model.HiveJob do
  @moduledoc """
  A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on YARN.

  ## Attributes

  *   `continueOnFailure` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  *   `jarFileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
  *   `properties` (*type:* `map()`, *default:* `nil`) - Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code.
  *   `queryFileUri` (*type:* `String.t`, *default:* `nil`) - The HCFS URI of the script that contains Hive queries.
  *   `queryList` (*type:* `GoogleApi.Dataproc.V1.Model.QueryList.t`, *default:* `nil`) - A list of queries.
  *   `scriptVariables` (*type:* `map()`, *default:* `nil`) - Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name="value";).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :continueOnFailure => boolean() | nil,
          :jarFileUris => list(String.t()) | nil,
          :properties => map() | nil,
          :queryFileUri => String.t() | nil,
          :queryList => GoogleApi.Dataproc.V1.Model.QueryList.t() | nil,
          :scriptVariables => map() | nil
        }

  field(:continueOnFailure)
  field(:jarFileUris, type: :list)
  field(:properties, type: :map)
  field(:queryFileUri)
  field(:queryList, as: GoogleApi.Dataproc.V1.Model.QueryList)
  field(:scriptVariables, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.HiveJob do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.HiveJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.HiveJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
