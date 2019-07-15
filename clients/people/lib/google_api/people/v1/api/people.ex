# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.People.V1.Api.People do
  @moduledoc """
  API calls for all endpoints tagged `People`.
  """

  alias GoogleApi.People.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Create a new contact and return the person resource for that contact.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
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
      *   `:parent` (*type:* `String.t`) - The resource name of the owning person resource.
      *   `:body` (*type:* `GoogleApi.People.V1.Model.Person.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.Person{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_people_create_contact(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.Person.t()} | {:error, Tesla.Env.t()}
  def people_people_create_contact(connection, optional_params \\ [], opts \\ []) do
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
      :parent => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/people:createContact", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.Person{}])
  end

  @doc """
  Delete a contact person. Any non-contact data will not be deleted.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `people_id` (*type:* `String.t`) - Part of `resourceName`. The resource name of the contact to delete.
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_people_delete_contact(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def people_people_delete_contact(connection, people_id, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/people/{peopleId}:deleteContact", %{
        "peopleId" => URI.encode(people_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.Empty{}])
  end

  @doc """
  Provides information about a person by specifying a resource name. Use
  `people/me` to indicate the authenticated user.
  <br>
  The request throws a 400 error if 'personFields' is not specified.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `people_id` (*type:* `String.t`) - Part of `resourceName`. The resource name of the person to provide information about.

      - To get information about the authenticated user, specify `people/me`.
      - To get information about a google account, specify
       `people/`<var>account_id</var>.
      - To get information about a contact, specify the resource name that
        identifies the contact as returned by
      [`people.connections.list`](/people/api/rest/v1/people.connections/list).
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
      *   `:personFields` (*type:* `String.t`) - **Required.** A field mask to restrict which fields on the person are
          returned. Multiple fields can be specified by separating them with commas.
          Valid values are:

          * addresses
          * ageRanges
          * biographies
          * birthdays
          * braggingRights
          * coverPhotos
          * emailAddresses
          * events
          * genders
          * imClients
          * interests
          * locales
          * memberships
          * metadata
          * names
          * nicknames
          * occupations
          * organizations
          * phoneNumbers
          * photos
          * relations
          * relationshipInterests
          * relationshipStatuses
          * residences
          * sipAddresses
          * skills
          * taglines
          * urls
          * userDefined
      *   `:"requestMask.includeField"` (*type:* `String.t`) - **Required.** Comma-separated list of person fields to be included in the
          response. Each path should start with `person.`: for example,
          `person.names` or `person.photos`.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.Person{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_people_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.Person.t()} | {:error, Tesla.Env.t()}
  def people_people_get(connection, people_id, optional_params \\ [], opts \\ []) do
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
      :personFields => :query,
      :"requestMask.includeField" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/people/{peopleId}", %{
        "peopleId" => URI.encode(people_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.Person{}])
  end

  @doc """
  Provides information about a list of specific people by specifying a list
  of requested resource names. Use `people/me` to indicate the authenticated
  user.
  <br>
  The request throws a 400 error if 'personFields' is not specified.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
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
      *   `:personFields` (*type:* `String.t`) - **Required.** A field mask to restrict which fields on each person are
          returned. Multiple fields can be specified by separating them with commas.
          Valid values are:

          * addresses
          * ageRanges
          * biographies
          * birthdays
          * braggingRights
          * coverPhotos
          * emailAddresses
          * events
          * genders
          * imClients
          * interests
          * locales
          * memberships
          * metadata
          * names
          * nicknames
          * occupations
          * organizations
          * phoneNumbers
          * photos
          * relations
          * relationshipInterests
          * relationshipStatuses
          * residences
          * sipAddresses
          * skills
          * taglines
          * urls
          * userDefined
      *   `:"requestMask.includeField"` (*type:* `String.t`) - **Required.** Comma-separated list of person fields to be included in the
          response. Each path should start with `person.`: for example,
          `person.names` or `person.photos`.
      *   `:resourceNames` (*type:* `list(String.t)`) - The resource names of the people to provide information about.

          - To get information about the authenticated user, specify `people/me`.
          - To get information about a google account, specify
            `people/`<var>account_id</var>.
          - To get information about a contact, specify the resource name that
            identifies the contact as returned by
          [`people.connections.list`](/people/api/rest/v1/people.connections/list).

          You can include up to 50 resource names in one request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.GetPeopleResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_people_get_batch_get(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.GetPeopleResponse.t()} | {:error, Tesla.Env.t()}
  def people_people_get_batch_get(connection, optional_params \\ [], opts \\ []) do
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
      :personFields => :query,
      :"requestMask.includeField" => :query,
      :resourceNames => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/people:batchGet", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.GetPeopleResponse{}])
  end

  @doc """
  Update contact data for an existing contact person. Any non-contact data
  will not be modified.

  The request throws a 400 error if `updatePersonFields` is not specified.
  <br>
  The request throws a 400 error if `person.metadata.sources` is not
  specified for the contact to be updated.
  <br>
  The request throws a 412 error if `person.metadata.sources.etag` is
  different than the contact's etag, which indicates the contact has changed
  since its data was read. Clients should get the latest person and re-apply
  their updates to the latest person.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `people_id` (*type:* `String.t`) - Part of `person.resourceName`. The resource name for the person, assigned by the server. An ASCII string
      with a max length of 27 characters, in the form of
      `people/`<var>person_id</var>.
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
      *   `:updatePersonFields` (*type:* `String.t`) - **Required.** A field mask to restrict which fields on the person are
          updated. Multiple fields can be specified by separating them with commas.
          All updated fields will be replaced. Valid values are:

          * addresses
          * biographies
          * birthdays
          * emailAddresses
          * events
          * genders
          * imClients
          * interests
          * locales
          * memberships
          * names
          * nicknames
          * occupations
          * organizations
          * phoneNumbers
          * relations
          * residences
          * sipAddresses
          * urls
          * userDefined
      *   `:body` (*type:* `GoogleApi.People.V1.Model.Person.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.Person{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_people_update_contact(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.Person.t()} | {:error, Tesla.Env.t()}
  def people_people_update_contact(connection, people_id, optional_params \\ [], opts \\ []) do
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
      :updatePersonFields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/people/{peopleId}:updateContact", %{
        "peopleId" => URI.encode(people_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.Person{}])
  end

  @doc """
  Provides a list of the authenticated user's contacts merged with any
  connected profiles.
  <br>
  The request throws a 400 error if 'personFields' is not specified.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `people_id` (*type:* `String.t`) - Part of `resourceName`. The resource name to return connections for. Only `people/me` is valid.
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
      *   `:pageSize` (*type:* `integer()`) - The number of connections to include in the response. Valid values are
          between 1 and 2000, inclusive. Defaults to 100.
      *   `:pageToken` (*type:* `String.t`) - The token of the page to be returned.
      *   `:personFields` (*type:* `String.t`) - **Required.** A field mask to restrict which fields on each person are
          returned. Multiple fields can be specified by separating them with commas.
          Valid values are:

          * addresses
          * ageRanges
          * biographies
          * birthdays
          * braggingRights
          * coverPhotos
          * emailAddresses
          * events
          * genders
          * imClients
          * interests
          * locales
          * memberships
          * metadata
          * names
          * nicknames
          * occupations
          * organizations
          * phoneNumbers
          * photos
          * relations
          * relationshipInterests
          * relationshipStatuses
          * residences
          * sipAddresses
          * skills
          * taglines
          * urls
          * userDefined
      *   `:"requestMask.includeField"` (*type:* `String.t`) - **Required.** Comma-separated list of person fields to be included in the
          response. Each path should start with `person.`: for example,
          `person.names` or `person.photos`.
      *   `:requestSyncToken` (*type:* `boolean()`) - Whether the response should include a sync token, which can be used to get
          all changes since the last request. For subsequent sync requests use the
          `sync_token` param instead. Initial sync requests that specify
          `request_sync_token` have an additional rate limit.
      *   `:sortOrder` (*type:* `String.t`) - The order in which the connections should be sorted. Defaults to
          `LAST_MODIFIED_ASCENDING`.
      *   `:syncToken` (*type:* `String.t`) - A sync token returned by a previous call to `people.connections.list`.
          Only resources changed since the sync token was created will be returned.
          Sync requests that specify `sync_token` have an additional rate limit.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.ListConnectionsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_people_connections_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.ListConnectionsResponse.t()} | {:error, Tesla.Env.t()}
  def people_people_connections_list(connection, people_id, optional_params \\ [], opts \\ []) do
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
      :pageSize => :query,
      :pageToken => :query,
      :personFields => :query,
      :"requestMask.includeField" => :query,
      :requestSyncToken => :query,
      :sortOrder => :query,
      :syncToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/people/{peopleId}/connections", %{
        "peopleId" => URI.encode(people_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.ListConnectionsResponse{}])
  end
end
