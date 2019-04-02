# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  @moduledoc """
  Describes a Cloud Function that contains user computation executed in response to an event. It encapsulate function and triggers configurations. LINT.IfChange

  ## Attributes

  - availableMemoryMb (integer()): The amount of memory in MB available for a function. Defaults to 256MB. Defaults to: `null`.
  - description (String.t): User-provided description of a function. Defaults to: `null`.
  - entryPoint (String.t): The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named \&quot;function\&quot;. For Node.js this is name of a function exported by the module specified in &#x60;source_location&#x60;. Defaults to: `null`.
  - environmentVariables (%{optional(String.t) &#x3D;&gt; String.t}): Environment variables that shall be available during function execution. Defaults to: `null`.
  - eventTrigger (EventTrigger): A source that fires events in response to a condition in another service. Defaults to: `null`.
  - httpsTrigger (HttpsTrigger): An HTTPS endpoint type of source that can be triggered via URL. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Labels associated with this Cloud Function. Defaults to: `null`.
  - maxInstances (integer()): The limit on the maximum number of function instances that may coexist at a given time. This feature is currently in alpha, available only for whitelisted users. Defaults to: `null`.
  - name (String.t): A user-defined name of the function. Function names must be unique globally and match pattern &#x60;projects/*/locations/*/functions/*&#x60; Defaults to: `null`.
  - network (String.t): The VPC Network that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network resource. If the short network name is used, the network must belong to the same project. Otherwise, it must belong to a project within the same organization. The format of this field is either &#x60;projects/{project}/global/networks/{network}&#x60; or &#x60;{network}&#x60;, where {project} is a project id where the network is defined, and {network} is the short name of the network.  This field is mutually exclusive with &#x60;vpc_connector&#x60; and will be replaced by it.  See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.  This feature is currently in alpha, available only for whitelisted users. Defaults to: `null`.
  - runtime (String.t): The runtime in which the function is going to run. Example values include: &#x60;go111&#x60;: for Go 1.11 &#x60;nodejs6&#x60;: for Node.js 6 &#x60;nodejs8&#x60;: for Node.js 8 &#x60;nodejs10&#x60;: for Node.js 10 &#x60;python37&#x60;: for Python 3.7 &#x60;ruby25&#x60;: for Ruby 2.5  If empty, defaults to &#x60;nodejs6&#x60;. Defaults to: `null`.
  - serviceAccountEmail (String.t): The email of the function&#39;s service account. If empty, defaults to {project_id}@appspot.gserviceaccount.com. Defaults to: `null`.
  - sourceArchiveUrl (String.t): The Google Cloud Storage URL, starting with gs://, pointing to the zip archive which contains the function. Defaults to: `null`.
  - sourceRepository (SourceRepository): **Beta Feature**  The source repository where a function is hosted. Defaults to: `null`.
  - sourceUploadUrl (String.t): The Google Cloud Storage signed URL used for source uploading, generated by google.cloud.functions.v1.GenerateUploadUrl Defaults to: `null`.
  - status (String.t): Output only. Status of the function deployment. Defaults to: `null`.
    - Enum - one of [CLOUD_FUNCTION_STATUS_UNSPECIFIED, ACTIVE, OFFLINE, DEPLOY_IN_PROGRESS, DELETE_IN_PROGRESS, UNKNOWN]
  - timeout (String.t): The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds. Defaults to: `null`.
  - updateTime (DateTime.t): Output only. The last update timestamp of a Cloud Function. Defaults to: `null`.
  - versionId (String.t): Output only. The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created. Defaults to: `null`.
  - vpcConnector (String.t): The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is &#x60;projects/*/locations/*/connectors/*&#x60;  This field is mutually exclusive with &#x60;network&#x60; field and will eventually replace it.  See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.  This feature is currently in alpha, available only for whitelisted users. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availableMemoryMb => any(),
          :description => any(),
          :entryPoint => any(),
          :environmentVariables => map(),
          :eventTrigger => GoogleApi.CloudFunctions.V1.Model.EventTrigger.t(),
          :httpsTrigger => GoogleApi.CloudFunctions.V1.Model.HttpsTrigger.t(),
          :labels => map(),
          :maxInstances => any(),
          :name => any(),
          :network => any(),
          :runtime => any(),
          :serviceAccountEmail => any(),
          :sourceArchiveUrl => any(),
          :sourceRepository => GoogleApi.CloudFunctions.V1.Model.SourceRepository.t(),
          :sourceUploadUrl => any(),
          :status => any(),
          :timeout => any(),
          :updateTime => DateTime.t(),
          :versionId => any(),
          :vpcConnector => any()
        }

  field(:availableMemoryMb)
  field(:description)
  field(:entryPoint)
  field(:environmentVariables, type: :map)
  field(:eventTrigger, as: GoogleApi.CloudFunctions.V1.Model.EventTrigger)
  field(:httpsTrigger, as: GoogleApi.CloudFunctions.V1.Model.HttpsTrigger)
  field(:labels, type: :map)
  field(:maxInstances)
  field(:name)
  field(:network)
  field(:runtime)
  field(:serviceAccountEmail)
  field(:sourceArchiveUrl)
  field(:sourceRepository, as: GoogleApi.CloudFunctions.V1.Model.SourceRepository)
  field(:sourceUploadUrl)
  field(:status)
  field(:timeout)
  field(:updateTime, as: DateTime)
  field(:versionId)
  field(:vpcConnector)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V1.Model.CloudFunction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
