cd H:\tensorflow\tensorflow\core\framework\
set command=C:\src\packages\protoc-3.0.0-alpha-2\protoc.exe --proto_path=H:\tensorflow;.\ --cpp_out=.\
%command% allocation_description.proto
%command% attr_value.proto
%command% config.proto
%command% device_attributes.proto
%command% function.proto
%command% graph.proto
%command% kernel_def.proto
%command% op_def.proto
%command% step_stats.proto
%command% summary.proto
%command% tensor.proto
%command% tensor_description.proto
%command% tensor_shape.proto
%command% tensor_slice.proto
%command% types.proto

cd H:\tensorflow\tensorflow\core\lib\core
set command=C:\src\packages\protoc-3.0.0-alpha-2\protoc.exe --proto_path=H:\tensorflow;.\ --cpp_out=.\
%command% error_codes.proto

cd H:\tensorflow\tensorflow\core\util
set command=C:\src\packages\protoc-3.0.0-alpha-2\protoc.exe --proto_path=H:\tensorflow;.\ --cpp_out=.\
%command% event.proto
%command% saved_tensor_slice.proto