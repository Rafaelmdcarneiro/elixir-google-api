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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Model do
  @moduledoc """
  A trained machine learning Model.

  ## Attributes

  *   `artifactUri` (*type:* `String.t`, *default:* `nil`) - Immutable. The path to the directory containing the Model artifact and any of its supporting files. Not required for AutoML Models.
  *   `baseModelSource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelBaseModelSource.t`, *default:* `nil`) - Optional. User input field to specify the base model source. Currently it only supports specifing the Model Garden models and Genie models.
  *   `containerSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelContainerSpec.t`, *default:* `nil`) - Input only. The specification of the container that is to be used when deploying this Model. The specification is ingested upon ModelService.UploadModel, and all binaries it contains are copied and stored internally by Vertex AI. Not required for AutoML Models.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Model was uploaded into Vertex AI.
  *   `dataStats` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDataStats.t`, *default:* `nil`) - Stats of data used for training or evaluating the Model. Only populated when the Model is trained by a TrainingPipeline with data_input_config.
  *   `deployedModels` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModelRef.t)`, *default:* `nil`) - Output only. The pointers to DeployedModels created from this Model. Note that Model could have been deployed to Endpoints in different Locations.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the Model.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the Model. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  *   `encryptionSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t`, *default:* `nil`) - Customer-managed encryption key spec for a Model. If set, this Model and all sub-resources of this Model will be secured by this key.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  *   `explanationSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec.t`, *default:* `nil`) - The default explanation specification for this Model. The Model can be used for requesting explanation after being deployed if it is populated. The Model can be used for batch explanation if it is populated. All fields of the explanation_spec can be overridden by explanation_spec of DeployModelRequest.deployed_model, or explanation_spec of BatchPredictionJob. If the default explanation specification is not set for this Model, this Model can still be used for requesting explanation by setting explanation_spec of DeployModelRequest.deployed_model and for batch explanation by setting explanation_spec of BatchPredictionJob.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels with user-defined metadata to organize your Models. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  *   `metadata` (*type:* `any()`, *default:* `nil`) - Immutable. An additional information about the Model; the schema of the metadata can be found in metadata_schema. Unset if the Model does not have any additional information.
  *   `metadataArtifact` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Artifact that was created in MetadataStore when creating the Model. The Artifact resource name pattern is `projects/{project}/locations/{location}/metadataStores/{metadata_store}/artifacts/{artifact}`.
  *   `metadataSchemaUri` (*type:* `String.t`, *default:* `nil`) - Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Model, that is specific to it. Unset if the Model does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no additional metadata is needed, this field is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  *   `modelSourceInfo` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelSourceInfo.t`, *default:* `nil`) - Output only. Source of a model. It can either be automl training pipeline, custom training pipeline, BigQuery ML, or saved and tuned from Genie or Model Garden.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the Model.
  *   `originalModelInfo` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelOriginalModelInfo.t`, *default:* `nil`) - Output only. If this Model is a copy of another Model, this contains info about the original.
  *   `pipelineJob` (*type:* `String.t`, *default:* `nil`) - Optional. This field is populated if the model is produced by a pipeline job.
  *   `predictSchemata` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredictSchemata.t`, *default:* `nil`) - The schemata that describe formats of the Model's predictions and explanations as given and returned via PredictionService.Predict and PredictionService.Explain.
  *   `supportedDeploymentResourcesTypes` (*type:* `list(String.t)`, *default:* `nil`) - Output only. When this Model is deployed, its prediction resources are described by the `prediction_resources` field of the Endpoint.deployed_models object. Because not all Models support all resource configuration types, the configuration types this Model supports are listed here. If no configuration types are listed, the Model cannot be deployed to an Endpoint and does not support online predictions (PredictionService.Predict or PredictionService.Explain). Such a Model can serve predictions by using a BatchPredictionJob, if it has at least one entry each in supported_input_storage_formats and supported_output_storage_formats.
  *   `supportedExportFormats` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExportFormat.t)`, *default:* `nil`) - Output only. The formats in which this Model may be exported. If empty, this Model is not available for export.
  *   `supportedInputStorageFormats` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The formats this Model supports in BatchPredictionJob.input_config. If PredictSchemata.instance_schema_uri exists, the instances should be given as per that schema. The possible formats are: * `jsonl` The JSON Lines format, where each instance is a single line. Uses GcsSource. * `csv` The CSV format, where each instance is a single comma-separated line. The first line in the file is the header, containing comma-separated field names. Uses GcsSource. * `tf-record` The TFRecord format, where each instance is a single record in tfrecord syntax. Uses GcsSource. * `tf-record-gzip` Similar to `tf-record`, but the file is gzipped. Uses GcsSource. * `bigquery` Each instance is a single row in BigQuery. Uses BigQuerySource. * `file-list` Each line of the file is the location of an instance to process, uses `gcs_source` field of the InputConfig object. If this Model doesn't support any of these formats it means it cannot be used with a BatchPredictionJob. However, if it has supported_deployment_resources_types, it could serve online predictions by using PredictionService.Predict or PredictionService.Explain.
  *   `supportedOutputStorageFormats` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The formats this Model supports in BatchPredictionJob.output_config. If both PredictSchemata.instance_schema_uri and PredictSchemata.prediction_schema_uri exist, the predictions are returned together with their instances. In other words, the prediction has the original instance data first, followed by the actual prediction content (as per the schema). The possible formats are: * `jsonl` The JSON Lines format, where each prediction is a single line. Uses GcsDestination. * `csv` The CSV format, where each prediction is a single comma-separated line. The first line in the file is the header, containing comma-separated field names. Uses GcsDestination. * `bigquery` Each prediction is a single row in a BigQuery table, uses BigQueryDestination . If this Model doesn't support any of these formats it means it cannot be used with a BatchPredictionJob. However, if it has supported_deployment_resources_types, it could serve online predictions by using PredictionService.Predict or PredictionService.Explain.
  *   `trainingPipeline` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the TrainingPipeline that uploaded this Model, if any.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Model was most recently updated.
  *   `versionAliases` (*type:* `list(String.t)`, *default:* `nil`) - User provided version aliases so that a model version can be referenced via alias (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_alias}` instead of auto-generated version id (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_id})`. The format is a-z{0,126}[a-z0-9] to distinguish from version_id. A default version alias will be created for the first version of the model, and there must be exactly one default version alias for a model.
  *   `versionCreateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this version was created.
  *   `versionDescription` (*type:* `String.t`, *default:* `nil`) - The description of this version.
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The version ID of the model. A new version is committed when a new model version is uploaded or trained under an existing model id. It is an auto-incrementing decimal number in string representation.
  *   `versionUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this version was most recently updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifactUri => String.t() | nil,
          :baseModelSource =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelBaseModelSource.t() | nil,
          :containerSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelContainerSpec.t() | nil,
          :createTime => DateTime.t() | nil,
          :dataStats =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDataStats.t() | nil,
          :deployedModels =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModelRef.t()) | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :encryptionSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t() | nil,
          :etag => String.t() | nil,
          :explanationSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec.t() | nil,
          :labels => map() | nil,
          :metadata => any() | nil,
          :metadataArtifact => String.t() | nil,
          :metadataSchemaUri => String.t() | nil,
          :modelSourceInfo =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelSourceInfo.t() | nil,
          :name => String.t() | nil,
          :originalModelInfo =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelOriginalModelInfo.t() | nil,
          :pipelineJob => String.t() | nil,
          :predictSchemata =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredictSchemata.t() | nil,
          :supportedDeploymentResourcesTypes => list(String.t()) | nil,
          :supportedExportFormats =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExportFormat.t()) | nil,
          :supportedInputStorageFormats => list(String.t()) | nil,
          :supportedOutputStorageFormats => list(String.t()) | nil,
          :trainingPipeline => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :versionAliases => list(String.t()) | nil,
          :versionCreateTime => DateTime.t() | nil,
          :versionDescription => String.t() | nil,
          :versionId => String.t() | nil,
          :versionUpdateTime => DateTime.t() | nil
        }

  field(:artifactUri)

  field(:baseModelSource,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelBaseModelSource
  )

  field(:containerSpec,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelContainerSpec
  )

  field(:createTime, as: DateTime)
  field(:dataStats, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDataStats)

  field(:deployedModels,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModelRef,
    type: :list
  )

  field(:description)
  field(:displayName)
  field(:encryptionSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec)
  field(:etag)

  field(:explanationSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec)

  field(:labels, type: :map)
  field(:metadata)
  field(:metadataArtifact)
  field(:metadataSchemaUri)

  field(:modelSourceInfo, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelSourceInfo)

  field(:name)

  field(:originalModelInfo,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelOriginalModelInfo
  )

  field(:pipelineJob)

  field(:predictSchemata, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredictSchemata)

  field(:supportedDeploymentResourcesTypes, type: :list)

  field(:supportedExportFormats,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExportFormat,
    type: :list
  )

  field(:supportedInputStorageFormats, type: :list)
  field(:supportedOutputStorageFormats, type: :list)
  field(:trainingPipeline)
  field(:updateTime, as: DateTime)
  field(:versionAliases, type: :list)
  field(:versionCreateTime, as: DateTime)
  field(:versionDescription)
  field(:versionId)
  field(:versionUpdateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Model do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Model.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Model do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
