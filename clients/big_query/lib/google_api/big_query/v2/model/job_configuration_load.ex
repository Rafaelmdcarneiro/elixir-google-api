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

defmodule GoogleApi.BigQuery.V2.Model.JobConfigurationLoad do
  @moduledoc """


  ## Attributes

  - allowJaggedRows (boolean()): [Optional] Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats. Defaults to `nil`.
  - allowQuotedNewlines (boolean()): Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false. Defaults to `nil`.
  - autodetect (boolean()): [Optional] Indicates if we should automatically infer the options and schema for CSV and JSON sources. Defaults to `nil`.
  - clustering (GoogleApi.BigQuery.V2.Model.Clustering.t): [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered. Defaults to `nil`.
  - createDisposition (String.t): [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion. Defaults to `nil`.
  - destinationEncryptionConfiguration (GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t): Custom encryption configuration (e.g., Cloud KMS keys). Defaults to `nil`.
  - destinationTable (GoogleApi.BigQuery.V2.Model.TableReference.t): [Required] The destination table to load the data into. Defaults to `nil`.
  - destinationTableProperties (GoogleApi.BigQuery.V2.Model.DestinationTableProperties.t): [Beta] [Optional] Properties with which to create the destination table if it is new. Defaults to `nil`.
  - encoding (String.t): [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties. Defaults to `nil`.
  - fieldDelimiter (String.t): [Optional] The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character. To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator. The default value is a comma (','). Defaults to `nil`.
  - hivePartitioningMode (String.t): [Optional, Trusted Tester] If hive partitioning is enabled, which mode to use. Two modes are supported: - AUTO: automatically infer partition key name(s) and type(s). - STRINGS: automatic infer partition key name(s). All types are strings. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error. Defaults to `nil`.
  - hivePartitioningOptions (GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t): [Optional, Trusted Tester] Options to configure hive partitioning support. Defaults to `nil`.
  - ignoreUnknownValues (boolean()): [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Defaults to `nil`.
  - maxBadRecords (integer()): [Optional] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV and JSON. The default value is 0, which requires that all records are valid. Defaults to `nil`.
  - nullMarker (String.t): [Optional] Specifies a string that represents a null value in a CSV file. For example, if you specify "\N", BigQuery interprets "\N" as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value. Defaults to `nil`.
  - projectionFields (list(String.t)): If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result. Defaults to `nil`.
  - quote (String.t): [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. Defaults to `"`.
  - rangePartitioning (GoogleApi.BigQuery.V2.Model.RangePartitioning.t): [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified. Defaults to `nil`.
  - schema (GoogleApi.BigQuery.V2.Model.TableSchema.t): [Optional] The schema for the destination table. The schema can be omitted if the destination table already exists, or if you're loading data from Google Cloud Datastore. Defaults to `nil`.
  - schemaInline (String.t): [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT". Defaults to `nil`.
  - schemaInlineFormat (String.t): [Deprecated] The format of the schemaInline property. Defaults to `nil`.
  - schemaUpdateOptions (list(String.t)): Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable. Defaults to `nil`.
  - skipLeadingRows (integer()): [Optional] The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. Defaults to `nil`.
  - sourceFormat (String.t): [Optional] The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify "PARQUET". For orc, specify "ORC". The default value is CSV. Defaults to `nil`.
  - sourceUris (list(String.t)): [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '*' wildcard character is not allowed. Defaults to `nil`.
  - timePartitioning (GoogleApi.BigQuery.V2.Model.TimePartitioning.t): Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified. Defaults to `nil`.
  - useAvroLogicalTypes (boolean()): [Optional] If sourceFormat is set to "AVRO", indicates whether to enable interpreting logical types into their corresponding types (ie. TIMESTAMP), instead of only using their raw types (ie. INTEGER). Defaults to `nil`.
  - writeDisposition (String.t): [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowJaggedRows => boolean(),
          :allowQuotedNewlines => boolean(),
          :autodetect => boolean(),
          :clustering => GoogleApi.BigQuery.V2.Model.Clustering.t(),
          :createDisposition => String.t(),
          :destinationEncryptionConfiguration =>
            GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t(),
          :destinationTable => GoogleApi.BigQuery.V2.Model.TableReference.t(),
          :destinationTableProperties =>
            GoogleApi.BigQuery.V2.Model.DestinationTableProperties.t(),
          :encoding => String.t(),
          :fieldDelimiter => String.t(),
          :hivePartitioningMode => String.t(),
          :hivePartitioningOptions => GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t(),
          :ignoreUnknownValues => boolean(),
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

  field(
    :destinationEncryptionConfiguration,
    as: GoogleApi.BigQuery.V2.Model.EncryptionConfiguration
  )

  field(:destinationTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:destinationTableProperties, as: GoogleApi.BigQuery.V2.Model.DestinationTableProperties)
  field(:encoding)
  field(:fieldDelimiter)
  field(:hivePartitioningMode)
  field(:hivePartitioningOptions, as: GoogleApi.BigQuery.V2.Model.HivePartitioningOptions)
  field(:ignoreUnknownValues)
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
