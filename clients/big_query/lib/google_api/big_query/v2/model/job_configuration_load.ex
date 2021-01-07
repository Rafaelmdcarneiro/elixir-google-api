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

defmodule GoogleApi.BigQuery.V2.Model.JobConfigurationLoad do
  @moduledoc """


  ## Attributes

  *   `allowJaggedRows` (*type:* `boolean()`, *default:* `nil`) - [Optional] Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.
  *   `allowQuotedNewlines` (*type:* `boolean()`, *default:* `nil`) - Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  *   `autodetect` (*type:* `boolean()`, *default:* `nil`) - [Optional] Indicates if we should automatically infer the options and schema for CSV and JSON sources.
  *   `clustering` (*type:* `GoogleApi.BigQuery.V2.Model.Clustering.t`, *default:* `nil`) - [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  *   `createDisposition` (*type:* `String.t`, *default:* `nil`) - [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  *   `decimalTargetTypes` (*type:* `list(String.t)`, *default:* `nil`) - Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC ([Preview](/products/#product-launch-stages)), and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: * (38,9) -> NUMERIC; * (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); * (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); * (76,38) -> BIGNUMERIC; * (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  *   `destinationEncryptionConfiguration` (*type:* `GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t`, *default:* `nil`) - Custom encryption configuration (e.g., Cloud KMS keys).
  *   `destinationTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - [Required] The destination table to load the data into.
  *   `destinationTableProperties` (*type:* `GoogleApi.BigQuery.V2.Model.DestinationTableProperties.t`, *default:* `nil`) - [Beta] [Optional] Properties with which to create the destination table if it is new.
  *   `encoding` (*type:* `String.t`, *default:* `nil`) - [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
  *   `fieldDelimiter` (*type:* `String.t`, *default:* `nil`) - [Optional] The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character. To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\\t" to specify a tab separator. The default value is a comma (',').
  *   `hivePartitioningOptions` (*type:* `GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t`, *default:* `nil`) - [Optional] Options to configure hive partitioning support.
  *   `ignoreUnknownValues` (*type:* `boolean()`, *default:* `nil`) - [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names
  *   `jsonExtension` (*type:* `String.t`, *default:* `nil`) - [Optional] If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON. For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited GeoJSON: set to GEOJSON.
  *   `maxBadRecords` (*type:* `integer()`, *default:* `nil`) - [Optional] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV and JSON. The default value is 0, which requires that all records are valid.
  *   `nullMarker` (*type:* `String.t`, *default:* `nil`) - [Optional] Specifies a string that represents a null value in a CSV file. For example, if you specify "\\N", BigQuery interprets "\\N" as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value.
  *   `projectionFields` (*type:* `list(String.t)`, *default:* `nil`) - If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result.
  *   `quote` (*type:* `String.t`, *default:* `"`) - [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  *   `rangePartitioning` (*type:* `GoogleApi.BigQuery.V2.Model.RangePartitioning.t`, *default:* `nil`) - [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  *   `schema` (*type:* `GoogleApi.BigQuery.V2.Model.TableSchema.t`, *default:* `nil`) - [Optional] The schema for the destination table. The schema can be omitted if the destination table already exists, or if you're loading data from Google Cloud Datastore.
  *   `schemaInline` (*type:* `String.t`, *default:* `nil`) - [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT".
  *   `schemaInlineFormat` (*type:* `String.t`, *default:* `nil`) - [Deprecated] The format of the schemaInline property.
  *   `schemaUpdateOptions` (*type:* `list(String.t)`, *default:* `nil`) - Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  *   `skipLeadingRows` (*type:* `integer()`, *default:* `nil`) - [Optional] The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped.
  *   `sourceFormat` (*type:* `String.t`, *default:* `nil`) - [Optional] The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify "PARQUET". For orc, specify "ORC". The default value is CSV.
  *   `sourceUris` (*type:* `list(String.t)`, *default:* `nil`) - [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  *   `timePartitioning` (*type:* `GoogleApi.BigQuery.V2.Model.TimePartitioning.t`, *default:* `nil`) - Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  *   `useAvroLogicalTypes` (*type:* `boolean()`, *default:* `nil`) - [Optional] If sourceFormat is set to "AVRO", indicates whether to enable interpreting logical types into their corresponding types (ie. TIMESTAMP), instead of only using their raw types (ie. INTEGER).
  *   `writeDisposition` (*type:* `String.t`, *default:* `nil`) - [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowJaggedRows => boolean(),
          :allowQuotedNewlines => boolean(),
          :autodetect => boolean(),
          :clustering => GoogleApi.BigQuery.V2.Model.Clustering.t(),
          :createDisposition => String.t(),
          :decimalTargetTypes => list(String.t()),
          :destinationEncryptionConfiguration =>
            GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t(),
          :destinationTable => GoogleApi.BigQuery.V2.Model.TableReference.t(),
          :destinationTableProperties =>
            GoogleApi.BigQuery.V2.Model.DestinationTableProperties.t(),
          :encoding => String.t(),
          :fieldDelimiter => String.t(),
          :hivePartitioningOptions => GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t(),
          :ignoreUnknownValues => boolean(),
          :jsonExtension => String.t(),
          :maxBadRecords => integer(),
          :nullMarker => String.t(),
          :projectionFields => list(String.t()),
          :quote => String.t(),
          :rangePartitioning => GoogleApi.BigQuery.V2.Model.RangePartitioning.t(),
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t(),
          :schemaInline => String.t(),
          :schemaInlineFormat => String.t(),
          :schemaUpdateOptions => list(String.t()),
          :skipLeadingRows => integer(),
          :sourceFormat => String.t(),
          :sourceUris => list(String.t()),
          :timePartitioning => GoogleApi.BigQuery.V2.Model.TimePartitioning.t(),
          :useAvroLogicalTypes => boolean(),
          :writeDisposition => String.t()
        }

  field(:allowJaggedRows)
  field(:allowQuotedNewlines)
  field(:autodetect)
  field(:clustering, as: GoogleApi.BigQuery.V2.Model.Clustering)
  field(:createDisposition)
  field(:decimalTargetTypes, type: :list)

  field(:destinationEncryptionConfiguration,
    as: GoogleApi.BigQuery.V2.Model.EncryptionConfiguration
  )

  field(:destinationTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:destinationTableProperties, as: GoogleApi.BigQuery.V2.Model.DestinationTableProperties)
  field(:encoding)
  field(:fieldDelimiter)
  field(:hivePartitioningOptions, as: GoogleApi.BigQuery.V2.Model.HivePartitioningOptions)
  field(:ignoreUnknownValues)
  field(:jsonExtension)
  field(:maxBadRecords)
  field(:nullMarker)
  field(:projectionFields, type: :list)
  field(:quote)
  field(:rangePartitioning, as: GoogleApi.BigQuery.V2.Model.RangePartitioning)
  field(:schema, as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:schemaInline)
  field(:schemaInlineFormat)
  field(:schemaUpdateOptions, type: :list)
  field(:skipLeadingRows)
  field(:sourceFormat)
  field(:sourceUris, type: :list)
  field(:timePartitioning, as: GoogleApi.BigQuery.V2.Model.TimePartitioning)
  field(:useAvroLogicalTypes)
  field(:writeDisposition)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationLoad do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobConfigurationLoad.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationLoad do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
