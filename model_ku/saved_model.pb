??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8٣
{
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	)?* 
shared_namedense_48/kernel
t
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel*
_output_shapes
:	)?*
dtype0
s
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_48/bias
l
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
_output_shapes	
:?*
dtype0
|
dense_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_49/kernel
u
#dense_49/kernel/Read/ReadVariableOpReadVariableOpdense_49/kernel* 
_output_shapes
:
??*
dtype0
s
dense_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_49/bias
l
!dense_49/bias/Read/ReadVariableOpReadVariableOpdense_49/bias*
_output_shapes	
:?*
dtype0
{
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_50/kernel
t
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel*
_output_shapes
:	?*
dtype0
r
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_50/bias
k
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes
:*
dtype0
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adamax/dense_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	)?*)
shared_nameAdamax/dense_48/kernel/m
?
,Adamax/dense_48/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_48/kernel/m*
_output_shapes
:	)?*
dtype0
?
Adamax/dense_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdamax/dense_48/bias/m
~
*Adamax/dense_48/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_48/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_49/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdamax/dense_49/kernel/m
?
,Adamax/dense_49/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_49/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdamax/dense_49/bias/m
~
*Adamax/dense_49/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_49/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameAdamax/dense_50/kernel/m
?
,Adamax/dense_50/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_50/kernel/m*
_output_shapes
:	?*
dtype0
?
Adamax/dense_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_50/bias/m
}
*Adamax/dense_50/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_50/bias/m*
_output_shapes
:*
dtype0
?
Adamax/dense_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	)?*)
shared_nameAdamax/dense_48/kernel/v
?
,Adamax/dense_48/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_48/kernel/v*
_output_shapes
:	)?*
dtype0
?
Adamax/dense_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdamax/dense_48/bias/v
~
*Adamax/dense_48/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_48/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_49/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdamax/dense_49/kernel/v
?
,Adamax/dense_49/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_49/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdamax/dense_49/bias/v
~
*Adamax/dense_49/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_49/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameAdamax/dense_50/kernel/v
?
,Adamax/dense_50/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_50/kernel/v*
_output_shapes
:	?*
dtype0
?
Adamax/dense_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_50/bias/v
}
*Adamax/dense_50/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_50/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?'
value?'B?' B?'
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
 	keras_api
?
!iter

"beta_1

#beta_2
	$decay
%learning_ratemJmKmLmMmNmOvPvQvRvSvTvU
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
?
&metrics
'non_trainable_variables
(layer_regularization_losses
	variables
trainable_variables

)layers
*layer_metrics
regularization_losses
 
 
 
 
?
+metrics
regularization_losses
,layer_regularization_losses
	variables
trainable_variables

-layers
.layer_metrics
/non_trainable_variables
[Y
VARIABLE_VALUEdense_48/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_48/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
0metrics
regularization_losses
1layer_regularization_losses
	variables
trainable_variables

2layers
3layer_metrics
4non_trainable_variables
[Y
VARIABLE_VALUEdense_49/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_49/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
5metrics
regularization_losses
6layer_regularization_losses
	variables
trainable_variables

7layers
8layer_metrics
9non_trainable_variables
[Y
VARIABLE_VALUEdense_50/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_50/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
:metrics
regularization_losses
;layer_regularization_losses
	variables
trainable_variables

<layers
=layer_metrics
>non_trainable_variables
JH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 
 

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Atotal
	Bcount
C	variables
D	keras_api
D
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

A0
B1

C	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

H	variables
?~
VARIABLE_VALUEAdamax/dense_48/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_48/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_49/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_49/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_50/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_50/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_48/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_48/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_49/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_49/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_50/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_50/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_flatten_16_inputPlaceholder*'
_output_shapes
:?????????)*
dtype0*
shape:?????????)
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_16_inputdense_48/kerneldense_48/biasdense_49/kerneldense_49/biasdense_50/kerneldense_50/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_64094
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOp#dense_49/kernel/Read/ReadVariableOp!dense_49/bias/Read/ReadVariableOp#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adamax/dense_48/kernel/m/Read/ReadVariableOp*Adamax/dense_48/bias/m/Read/ReadVariableOp,Adamax/dense_49/kernel/m/Read/ReadVariableOp*Adamax/dense_49/bias/m/Read/ReadVariableOp,Adamax/dense_50/kernel/m/Read/ReadVariableOp*Adamax/dense_50/bias/m/Read/ReadVariableOp,Adamax/dense_48/kernel/v/Read/ReadVariableOp*Adamax/dense_48/bias/v/Read/ReadVariableOp,Adamax/dense_49/kernel/v/Read/ReadVariableOp*Adamax/dense_49/bias/v/Read/ReadVariableOp,Adamax/dense_50/kernel/v/Read/ReadVariableOp*Adamax/dense_50/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_64450
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_48/kerneldense_48/biasdense_49/kerneldense_49/biasdense_50/kerneldense_50/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1Adamax/dense_48/kernel/mAdamax/dense_48/bias/mAdamax/dense_49/kernel/mAdamax/dense_49/bias/mAdamax/dense_50/kernel/mAdamax/dense_50/bias/mAdamax/dense_48/kernel/vAdamax/dense_48/bias/vAdamax/dense_49/kernel/vAdamax/dense_49/bias/vAdamax/dense_50/kernel/vAdamax/dense_50/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_64541˲
?
a
E__inference_flatten_16_layer_call_and_return_conditional_losses_63852

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????)   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????)2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????)2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????):O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
C__inference_dense_50_layer_call_and_return_conditional_losses_63900

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_16_layer_call_and_return_conditional_losses_64285

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????)   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????)2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????)2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????):O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
(__inference_dense_50_layer_call_fn_64335

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_50_layer_call_and_return_conditional_losses_639002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_48_layer_call_fn_64294

inputs
unknown:	)?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_48_layer_call_and_return_conditional_losses_638662
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
(__inference_dense_49_layer_call_fn_64315

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_49_layer_call_and_return_conditional_losses_638832
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_50_layer_call_and_return_conditional_losses_64346

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_49_layer_call_and_return_conditional_losses_63883

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64218

inputs:
'dense_48_matmul_readvariableop_resource:	)?7
(dense_48_biasadd_readvariableop_resource:	?;
'dense_49_matmul_readvariableop_resource:
??7
(dense_49_biasadd_readvariableop_resource:	?:
'dense_50_matmul_readvariableop_resource:	?6
(dense_50_biasadd_readvariableop_resource:
identity??dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOpu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"????)   2
flatten_16/Const?
flatten_16/ReshapeReshapeinputsflatten_16/Const:output:0*
T0*'
_output_shapes
:?????????)2
flatten_16/Reshape?
dense_48/CastCastflatten_16/Reshape:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????)2
dense_48/Cast?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	)?*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMuldense_48/Cast:y:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/BiasAddt
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_48/Relu?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_49/MatMul/ReadVariableOp?
dense_49/MatMulMatMuldense_48/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_49/MatMul?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_49/BiasAddt
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_49/Relu?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_50/MatMul/ReadVariableOp?
dense_50/MatMulMatMuldense_49/Relu:activations:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_50/MatMul?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_50/BiasAdd|
dense_50/SoftmaxSoftmaxdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_50/Softmaxu
IdentityIdentitydense_50/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?"
?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64274
flatten_16_input:
'dense_48_matmul_readvariableop_resource:	)?7
(dense_48_biasadd_readvariableop_resource:	?;
'dense_49_matmul_readvariableop_resource:
??7
(dense_49_biasadd_readvariableop_resource:	?:
'dense_50_matmul_readvariableop_resource:	?6
(dense_50_biasadd_readvariableop_resource:
identity??dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOpu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"????)   2
flatten_16/Const?
flatten_16/ReshapeReshapeflatten_16_inputflatten_16/Const:output:0*
T0*'
_output_shapes
:?????????)2
flatten_16/Reshape?
dense_48/CastCastflatten_16/Reshape:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????)2
dense_48/Cast?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	)?*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMuldense_48/Cast:y:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/BiasAddt
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_48/Relu?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_49/MatMul/ReadVariableOp?
dense_49/MatMulMatMuldense_48/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_49/MatMul?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_49/BiasAddt
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_49/Relu?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_50/MatMul/ReadVariableOp?
dense_50/MatMulMatMuldense_49/Relu:activations:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_50/MatMul?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_50/BiasAdd|
dense_50/SoftmaxSoftmaxdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_50/Softmaxu
IdentityIdentitydense_50/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????)
*
_user_specified_nameflatten_16_input
?	
?
-__inference_sequential_16_layer_call_fn_64162
flatten_16_input
unknown:	)?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_639972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????)
*
_user_specified_nameflatten_16_input
?	
?
-__inference_sequential_16_layer_call_fn_64145

inputs
unknown:	)?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_639972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
C__inference_dense_48_layer_call_and_return_conditional_losses_63866

inputs1
matmul_readvariableop_resource:	)?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????)2
Cast?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	)?*
dtype02
MatMul/ReadVariableOpv
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?	
?
-__inference_sequential_16_layer_call_fn_64111
flatten_16_input
unknown:	)?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_639072
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????)
*
_user_specified_nameflatten_16_input
?
?
H__inference_sequential_16_layer_call_and_return_conditional_losses_63907

inputs!
dense_48_63867:	)?
dense_48_63869:	?"
dense_49_63884:
??
dense_49_63886:	?!
dense_50_63901:	?
dense_50_63903:
identity?? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall?
flatten_16/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_16_layer_call_and_return_conditional_losses_638522
flatten_16/PartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_48_63867dense_48_63869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_48_layer_call_and_return_conditional_losses_638662"
 dense_48/StatefulPartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_63884dense_49_63886*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_49_layer_call_and_return_conditional_losses_638832"
 dense_49/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_63901dense_50_63903*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_50_layer_call_and_return_conditional_losses_639002"
 dense_50/StatefulPartitionedCall?
IdentityIdentity)dense_50/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?>
?
__inference__traced_save_64450
file_prefix.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop.
*savev2_dense_49_kernel_read_readvariableop,
(savev2_dense_49_bias_read_readvariableop.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adamax_dense_48_kernel_m_read_readvariableop5
1savev2_adamax_dense_48_bias_m_read_readvariableop7
3savev2_adamax_dense_49_kernel_m_read_readvariableop5
1savev2_adamax_dense_49_bias_m_read_readvariableop7
3savev2_adamax_dense_50_kernel_m_read_readvariableop5
1savev2_adamax_dense_50_bias_m_read_readvariableop7
3savev2_adamax_dense_48_kernel_v_read_readvariableop5
1savev2_adamax_dense_48_bias_v_read_readvariableop7
3savev2_adamax_dense_49_kernel_v_read_readvariableop5
1savev2_adamax_dense_49_bias_v_read_readvariableop7
3savev2_adamax_dense_50_kernel_v_read_readvariableop5
1savev2_adamax_dense_50_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableop*savev2_dense_49_kernel_read_readvariableop(savev2_dense_49_bias_read_readvariableop*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adamax_dense_48_kernel_m_read_readvariableop1savev2_adamax_dense_48_bias_m_read_readvariableop3savev2_adamax_dense_49_kernel_m_read_readvariableop1savev2_adamax_dense_49_bias_m_read_readvariableop3savev2_adamax_dense_50_kernel_m_read_readvariableop1savev2_adamax_dense_50_bias_m_read_readvariableop3savev2_adamax_dense_48_kernel_v_read_readvariableop1savev2_adamax_dense_48_bias_v_read_readvariableop3savev2_adamax_dense_49_kernel_v_read_readvariableop1savev2_adamax_dense_49_bias_v_read_readvariableop3savev2_adamax_dense_50_kernel_v_read_readvariableop1savev2_adamax_dense_50_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	)?:?:
??:?:	?:: : : : : : : : : :	)?:?:
??:?:	?::	)?:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	)?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	)?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	)?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?,
?
 __inference__wrapped_model_63839
flatten_16_inputH
5sequential_16_dense_48_matmul_readvariableop_resource:	)?E
6sequential_16_dense_48_biasadd_readvariableop_resource:	?I
5sequential_16_dense_49_matmul_readvariableop_resource:
??E
6sequential_16_dense_49_biasadd_readvariableop_resource:	?H
5sequential_16_dense_50_matmul_readvariableop_resource:	?D
6sequential_16_dense_50_biasadd_readvariableop_resource:
identity??-sequential_16/dense_48/BiasAdd/ReadVariableOp?,sequential_16/dense_48/MatMul/ReadVariableOp?-sequential_16/dense_49/BiasAdd/ReadVariableOp?,sequential_16/dense_49/MatMul/ReadVariableOp?-sequential_16/dense_50/BiasAdd/ReadVariableOp?,sequential_16/dense_50/MatMul/ReadVariableOp?
sequential_16/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"????)   2 
sequential_16/flatten_16/Const?
 sequential_16/flatten_16/ReshapeReshapeflatten_16_input'sequential_16/flatten_16/Const:output:0*
T0*'
_output_shapes
:?????????)2"
 sequential_16/flatten_16/Reshape?
sequential_16/dense_48/CastCast)sequential_16/flatten_16/Reshape:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????)2
sequential_16/dense_48/Cast?
,sequential_16/dense_48/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_48_matmul_readvariableop_resource*
_output_shapes
:	)?*
dtype02.
,sequential_16/dense_48/MatMul/ReadVariableOp?
sequential_16/dense_48/MatMulMatMulsequential_16/dense_48/Cast:y:04sequential_16/dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_16/dense_48/MatMul?
-sequential_16/dense_48/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_16/dense_48/BiasAdd/ReadVariableOp?
sequential_16/dense_48/BiasAddBiasAdd'sequential_16/dense_48/MatMul:product:05sequential_16/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_16/dense_48/BiasAdd?
sequential_16/dense_48/ReluRelu'sequential_16/dense_48/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_16/dense_48/Relu?
,sequential_16/dense_49/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_49_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_16/dense_49/MatMul/ReadVariableOp?
sequential_16/dense_49/MatMulMatMul)sequential_16/dense_48/Relu:activations:04sequential_16/dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_16/dense_49/MatMul?
-sequential_16/dense_49/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_49_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_16/dense_49/BiasAdd/ReadVariableOp?
sequential_16/dense_49/BiasAddBiasAdd'sequential_16/dense_49/MatMul:product:05sequential_16/dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_16/dense_49/BiasAdd?
sequential_16/dense_49/ReluRelu'sequential_16/dense_49/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_16/dense_49/Relu?
,sequential_16/dense_50/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_50_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_16/dense_50/MatMul/ReadVariableOp?
sequential_16/dense_50/MatMulMatMul)sequential_16/dense_49/Relu:activations:04sequential_16/dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_16/dense_50/MatMul?
-sequential_16/dense_50/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_16/dense_50/BiasAdd/ReadVariableOp?
sequential_16/dense_50/BiasAddBiasAdd'sequential_16/dense_50/MatMul:product:05sequential_16/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_16/dense_50/BiasAdd?
sequential_16/dense_50/SoftmaxSoftmax'sequential_16/dense_50/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_16/dense_50/Softmax?
IdentityIdentity(sequential_16/dense_50/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp.^sequential_16/dense_48/BiasAdd/ReadVariableOp-^sequential_16/dense_48/MatMul/ReadVariableOp.^sequential_16/dense_49/BiasAdd/ReadVariableOp-^sequential_16/dense_49/MatMul/ReadVariableOp.^sequential_16/dense_50/BiasAdd/ReadVariableOp-^sequential_16/dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 2^
-sequential_16/dense_48/BiasAdd/ReadVariableOp-sequential_16/dense_48/BiasAdd/ReadVariableOp2\
,sequential_16/dense_48/MatMul/ReadVariableOp,sequential_16/dense_48/MatMul/ReadVariableOp2^
-sequential_16/dense_49/BiasAdd/ReadVariableOp-sequential_16/dense_49/BiasAdd/ReadVariableOp2\
,sequential_16/dense_49/MatMul/ReadVariableOp,sequential_16/dense_49/MatMul/ReadVariableOp2^
-sequential_16/dense_50/BiasAdd/ReadVariableOp-sequential_16/dense_50/BiasAdd/ReadVariableOp2\
,sequential_16/dense_50/MatMul/ReadVariableOp,sequential_16/dense_50/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????)
*
_user_specified_nameflatten_16_input
?u
?
!__inference__traced_restore_64541
file_prefix3
 assignvariableop_dense_48_kernel:	)?/
 assignvariableop_1_dense_48_bias:	?6
"assignvariableop_2_dense_49_kernel:
??/
 assignvariableop_3_dense_49_bias:	?5
"assignvariableop_4_dense_50_kernel:	?.
 assignvariableop_5_dense_50_bias:(
assignvariableop_6_adamax_iter:	 *
 assignvariableop_7_adamax_beta_1: *
 assignvariableop_8_adamax_beta_2: )
assignvariableop_9_adamax_decay: 2
(assignvariableop_10_adamax_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: ?
,assignvariableop_15_adamax_dense_48_kernel_m:	)?9
*assignvariableop_16_adamax_dense_48_bias_m:	?@
,assignvariableop_17_adamax_dense_49_kernel_m:
??9
*assignvariableop_18_adamax_dense_49_bias_m:	??
,assignvariableop_19_adamax_dense_50_kernel_m:	?8
*assignvariableop_20_adamax_dense_50_bias_m:?
,assignvariableop_21_adamax_dense_48_kernel_v:	)?9
*assignvariableop_22_adamax_dense_48_bias_v:	?@
,assignvariableop_23_adamax_dense_49_kernel_v:
??9
*assignvariableop_24_adamax_dense_49_bias_v:	??
,assignvariableop_25_adamax_dense_50_kernel_v:	?8
*assignvariableop_26_adamax_dense_50_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_48_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_48_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_49_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_49_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_50_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_50_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adamax_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_adamax_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_adamax_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adamax_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp(assignvariableop_10_adamax_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adamax_dense_48_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adamax_dense_48_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adamax_dense_49_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adamax_dense_49_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adamax_dense_50_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adamax_dense_50_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adamax_dense_48_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adamax_dense_48_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adamax_dense_49_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adamax_dense_49_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adamax_dense_50_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adamax_dense_50_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27f
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_28?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?"
?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64246
flatten_16_input:
'dense_48_matmul_readvariableop_resource:	)?7
(dense_48_biasadd_readvariableop_resource:	?;
'dense_49_matmul_readvariableop_resource:
??7
(dense_49_biasadd_readvariableop_resource:	?:
'dense_50_matmul_readvariableop_resource:	?6
(dense_50_biasadd_readvariableop_resource:
identity??dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOpu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"????)   2
flatten_16/Const?
flatten_16/ReshapeReshapeflatten_16_inputflatten_16/Const:output:0*
T0*'
_output_shapes
:?????????)2
flatten_16/Reshape?
dense_48/CastCastflatten_16/Reshape:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????)2
dense_48/Cast?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	)?*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMuldense_48/Cast:y:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/BiasAddt
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_48/Relu?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_49/MatMul/ReadVariableOp?
dense_49/MatMulMatMuldense_48/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_49/MatMul?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_49/BiasAddt
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_49/Relu?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_50/MatMul/ReadVariableOp?
dense_50/MatMulMatMuldense_49/Relu:activations:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_50/MatMul?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_50/BiasAdd|
dense_50/SoftmaxSoftmaxdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_50/Softmaxu
IdentityIdentitydense_50/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????)
*
_user_specified_nameflatten_16_input
?
?
C__inference_dense_49_layer_call_and_return_conditional_losses_64326

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_16_layer_call_fn_64128

inputs
unknown:	)?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_639072
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
C__inference_dense_48_layer_call_and_return_conditional_losses_64306

inputs1
matmul_readvariableop_resource:	)?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????)2
Cast?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	)?*
dtype02
MatMul/ReadVariableOpv
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?"
?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64190

inputs:
'dense_48_matmul_readvariableop_resource:	)?7
(dense_48_biasadd_readvariableop_resource:	?;
'dense_49_matmul_readvariableop_resource:
??7
(dense_49_biasadd_readvariableop_resource:	?:
'dense_50_matmul_readvariableop_resource:	?6
(dense_50_biasadd_readvariableop_resource:
identity??dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOpu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"????)   2
flatten_16/Const?
flatten_16/ReshapeReshapeinputsflatten_16/Const:output:0*
T0*'
_output_shapes
:?????????)2
flatten_16/Reshape?
dense_48/CastCastflatten_16/Reshape:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????)2
dense_48/Cast?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	)?*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMuldense_48/Cast:y:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/BiasAddt
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_48/Relu?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_49/MatMul/ReadVariableOp?
dense_49/MatMulMatMuldense_48/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_49/MatMul?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_49/BiasAddt
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_49/Relu?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_50/MatMul/ReadVariableOp?
dense_50/MatMulMatMuldense_49/Relu:activations:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_50/MatMul?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_50/BiasAdd|
dense_50/SoftmaxSoftmaxdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_50/Softmaxu
IdentityIdentitydense_50/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
H__inference_sequential_16_layer_call_and_return_conditional_losses_63997

inputs!
dense_48_63981:	)?
dense_48_63983:	?"
dense_49_63986:
??
dense_49_63988:	?!
dense_50_63991:	?
dense_50_63993:
identity?? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall?
flatten_16/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_16_layer_call_and_return_conditional_losses_638522
flatten_16/PartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_48_63981dense_48_63983*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_48_layer_call_and_return_conditional_losses_638662"
 dense_48/StatefulPartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_63986dense_49_63988*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_49_layer_call_and_return_conditional_losses_638832"
 dense_49/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_63991dense_50_63993*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_50_layer_call_and_return_conditional_losses_639002"
 dense_50/StatefulPartitionedCall?
IdentityIdentity)dense_50/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
F
*__inference_flatten_16_layer_call_fn_64279

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_16_layer_call_and_return_conditional_losses_638522
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????)2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????):O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_64094
flatten_16_input
unknown:	)?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_638392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????): : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????)
*
_user_specified_nameflatten_16_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
flatten_16_input9
"serving_default_flatten_16_input:0?????????)<
dense_500
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?[
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
V__call__
W_default_save_signature
*X&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
regularization_losses
	variables
trainable_variables
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
 	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
?
!iter

"beta_1

#beta_2
	$decay
%learning_ratemJmKmLmMmNmOvPvQvRvSvTvU"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
&metrics
'non_trainable_variables
(layer_regularization_losses
	variables
trainable_variables

)layers
*layer_metrics
regularization_losses
V__call__
W_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
+metrics
regularization_losses
,layer_regularization_losses
	variables
trainable_variables

-layers
.layer_metrics
/non_trainable_variables
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
": 	)?2dense_48/kernel
:?2dense_48/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
0metrics
regularization_losses
1layer_regularization_losses
	variables
trainable_variables

2layers
3layer_metrics
4non_trainable_variables
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_49/kernel
:?2dense_49/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
5metrics
regularization_losses
6layer_regularization_losses
	variables
trainable_variables

7layers
8layer_metrics
9non_trainable_variables
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_50/kernel
:2dense_50/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
:metrics
regularization_losses
;layer_regularization_losses
	variables
trainable_variables

<layers
=layer_metrics
>non_trainable_variables
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
N
	Atotal
	Bcount
C	variables
D	keras_api"
_tf_keras_metric
^
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
A0
B1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
):'	)?2Adamax/dense_48/kernel/m
#:!?2Adamax/dense_48/bias/m
*:(
??2Adamax/dense_49/kernel/m
#:!?2Adamax/dense_49/bias/m
):'	?2Adamax/dense_50/kernel/m
": 2Adamax/dense_50/bias/m
):'	)?2Adamax/dense_48/kernel/v
#:!?2Adamax/dense_48/bias/v
*:(
??2Adamax/dense_49/kernel/v
#:!?2Adamax/dense_49/bias/v
):'	?2Adamax/dense_50/kernel/v
": 2Adamax/dense_50/bias/v
?2?
-__inference_sequential_16_layer_call_fn_64111
-__inference_sequential_16_layer_call_fn_64128
-__inference_sequential_16_layer_call_fn_64145
-__inference_sequential_16_layer_call_fn_64162?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_63839flatten_16_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64190
H__inference_sequential_16_layer_call_and_return_conditional_losses_64218
H__inference_sequential_16_layer_call_and_return_conditional_losses_64246
H__inference_sequential_16_layer_call_and_return_conditional_losses_64274?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_flatten_16_layer_call_fn_64279?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_16_layer_call_and_return_conditional_losses_64285?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_48_layer_call_fn_64294?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_48_layer_call_and_return_conditional_losses_64306?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_49_layer_call_fn_64315?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_49_layer_call_and_return_conditional_losses_64326?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_50_layer_call_fn_64335?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_50_layer_call_and_return_conditional_losses_64346?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_64094flatten_16_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_63839x9?6
/?,
*?'
flatten_16_input?????????)
? "3?0
.
dense_50"?
dense_50??????????
C__inference_dense_48_layer_call_and_return_conditional_losses_64306]/?,
%?"
 ?
inputs?????????)
? "&?#
?
0??????????
? |
(__inference_dense_48_layer_call_fn_64294P/?,
%?"
 ?
inputs?????????)
? "????????????
C__inference_dense_49_layer_call_and_return_conditional_losses_64326^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_49_layer_call_fn_64315Q0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_50_layer_call_and_return_conditional_losses_64346]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_dense_50_layer_call_fn_64335P0?-
&?#
!?
inputs??????????
? "???????????
E__inference_flatten_16_layer_call_and_return_conditional_losses_64285X/?,
%?"
 ?
inputs?????????)
? "%?"
?
0?????????)
? y
*__inference_flatten_16_layer_call_fn_64279K/?,
%?"
 ?
inputs?????????)
? "??????????)?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64190h7?4
-?*
 ?
inputs?????????)
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64218h7?4
-?*
 ?
inputs?????????)
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64246rA?>
7?4
*?'
flatten_16_input?????????)
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_16_layer_call_and_return_conditional_losses_64274rA?>
7?4
*?'
flatten_16_input?????????)
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_16_layer_call_fn_64111eA?>
7?4
*?'
flatten_16_input?????????)
p 

 
? "???????????
-__inference_sequential_16_layer_call_fn_64128[7?4
-?*
 ?
inputs?????????)
p 

 
? "???????????
-__inference_sequential_16_layer_call_fn_64145[7?4
-?*
 ?
inputs?????????)
p

 
? "???????????
-__inference_sequential_16_layer_call_fn_64162eA?>
7?4
*?'
flatten_16_input?????????)
p

 
? "???????????
#__inference_signature_wrapper_64094?M?J
? 
C?@
>
flatten_16_input*?'
flatten_16_input?????????)"3?0
.
dense_50"?
dense_50?????????