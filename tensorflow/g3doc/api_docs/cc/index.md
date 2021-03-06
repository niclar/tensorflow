# TensorFlow C++ Session API reference documentation

TensorFlow's public C++ API includes only the API for executing graphs, as of
version 0.5. To control the execution of a graph from C++:

1. Build the computation graph using the [Python API](../../api_docs/python/).
1. Use [tf.train.write_graph()](../../api_docs/python/train.md#write_graph) to
write the graph to a file.
1. Load the graph using the C++ Session API. For example:

  ```c++
  // Reads a model graph definition from disk, and creates a session object you
  // can use to run it.
  Status LoadGraph(string graph_file_name, Session** session) {
    GraphDef graph_def;
    TF_RETURN_IF_ERROR(
        ReadBinaryProto(Env::Default(), graph_file_name, &graph_def));
    TF_RETURN_IF_ERROR(NewSession(SessionOptions(), session));
    TF_RETURN_IF_ERROR((*session)->Create(graph_def));
    return Status::OK();
  }
```

1. Run the graph with a call to `session->Run()`

## Env

* [tensorflow::Env](../../api_docs/cc/ClassEnv.md)
* [tensorflow::RandomAccessFile](../../api_docs/cc/ClassRandomAccessFile.md)
* [tensorflow::WritableFile](../../api_docs/cc/ClassWritableFile.md)
* [tensorflow::EnvWrapper](../../api_docs/cc/ClassEnvWrapper.md)

## Session

* [tensorflow::Session](../../api_docs/cc/ClassSession.md)
* [tensorflow::SessionOptions](../../api_docs/cc/StructSessionOptions.md)

## Status

* [tensorflow::Status](../../api_docs/cc/ClassStatus.md)
* [tensorflow::Status::State](../../api_docs/cc/StructState.md)

## Tensor

* [tensorflow::Tensor](../../api_docs/cc/ClassTensor.md)
* [tensorflow::TensorShape](../../api_docs/cc/ClassTensorShape.md)
* [tensorflow::TensorShapeDim](../../api_docs/cc/StructTensorShapeDim.md)
* [tensorflow::TensorShapeUtils](../../api_docs/cc/ClassTensorShapeUtils.md)

## Thread

* [tensorflow::Thread](../../api_docs/cc/ClassThread.md)
* [tensorflow::ThreadOptions](../../api_docs/cc/StructThreadOptions.md)



<div class='sections-order' style="display: none;">
<!--
<!-- ClassEnv.md -->
<!-- ClassRandomAccessFile.md -->
<!-- ClassWritableFile.md -->
<!-- ClassEnvWrapper.md -->
<!-- ClassSession.md -->
<!-- StructSessionOptions.md -->
<!-- ClassStatus.md -->
<!-- StructState.md -->
<!-- ClassTensor.md -->
<!-- ClassTensorShape.md -->
<!-- StructTensorShapeDim.md -->
<!-- ClassTensorShapeUtils.md -->
<!-- ClassThread.md -->
<!-- StructThreadOptions.md -->
-->
</div>
