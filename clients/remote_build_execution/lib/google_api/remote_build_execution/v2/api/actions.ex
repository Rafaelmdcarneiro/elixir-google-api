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

defmodule GoogleApi.RemoteBuildExecution.V2.Api.Actions do
  @moduledoc """
  API calls for all endpoints tagged `Actions`.
  """

  alias GoogleApi.RemoteBuildExecution.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Execute an action remotely.

  In order to execute an action, the client must first upload all of the
  inputs, the
  Command to run, and the
  Action into the
  ContentAddressableStorage.
  It then calls `Execute` with an `action_digest` referring to them. The
  server will run the action and eventually return the result.

  The input `Action`'s fields MUST meet the various canonicalization
  requirements specified in the documentation for their types so that it has
  the same digest as other logically equivalent `Action`s. The server MAY
  enforce the requirements and return errors if a non-canonical input is
  received. It MAY also proceed without verifying some or all of the
  requirements, such as for performance reasons. If the server does not
  verify the requirement, then it will treat the `Action` as distinct from
  another logically equivalent action if they hash differently.

  Returns a stream of
  google.longrunning.Operation messages
  describing the resulting execution, with eventual `response`
  ExecuteResponse. The
  `metadata` on the operation is of type
  ExecuteOperationMetadata.

  If the client remains connected after the first response is returned after
  the server, then updates are streamed as if the client had called
  WaitExecution
  until the execution completes or the request reaches an error. The
  operation can also be queried using Operations
  API.

  The server NEED NOT implement other methods or functionality of the
  Operations API.

  Errors discovered during creation of the `Operation` will be reported
  as gRPC Status errors, while errors that occurred while running the
  action will be reported in the `status` field of the `ExecuteResponse`. The
  server MUST NOT set the `error` field of the `Operation` proto.
  The possible errors include:

  * `INVALID_ARGUMENT`: One or more arguments are invalid.
  * `FAILED_PRECONDITION`: One or more errors occurred in setting up the
    action requested, such as a missing input or command or no worker being
    available. The client may be able to fix the errors and retry.
  * `RESOURCE_EXHAUSTED`: There is insufficient quota of some resource to run
    the action.
  * `UNAVAILABLE`: Due to a transient condition, such as all workers being
    occupied (and the server does not support a queue), the action could not
    be started. The client should retry.
  * `INTERNAL`: An internal error occurred in the execution engine or the
    worker.
  * `DEADLINE_EXCEEDED`: The execution timed out.
  * `CANCELLED`: The operation was cancelled by the client. This status is
    only possible if the server implements the Operations API CancelOperation
    method, and it was called for the current execution.

  In the case of a missing input or command, the server SHOULD additionally
  send a PreconditionFailure error detail
  where, for each requested blob not present in the CAS, there is a
  `Violation` with a `type` of `MISSING` and a `subject` of
  `"blobs/{hash}/{size}"` indicating the digest of the missing blob.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.RemoteBuildExecution.V2.Connection.t`) - Connection to server
  *   `instance_name` (*type:* `String.t`) - The instance of the execution system to operate against. A server may
      support multiple instances of the execution system (with their own workers,
      storage, caches, etc.). The server MAY require use of this field to select
      between them in an implementation-defined fashion, otherwise it can be
      omitted.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.RemoteBuildExecution.V2.Model.GoogleLongrunningOperation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec remotebuildexecution_actions_execute(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.RemoteBuildExecution.V2.Model.GoogleLongrunningOperation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def remotebuildexecution_actions_execute(
        connection,
        instance_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/{+instanceName}/actions:execute", %{
        "instanceName" => URI.encode(instance_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.RemoteBuildExecution.V2.Model.GoogleLongrunningOperation{}]
    )
  end
end
