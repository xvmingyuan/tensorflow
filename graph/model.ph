
7
inputPlaceholder*
dtype0*
shape:	d�
4
input_1Placeholder*
dtype0*
shape:d
S
hidden1/truncated_normal/shapeConst*
dtype0*
valueB"  �   
J
hidden1/truncated_normal/meanConst*
dtype0*
valueB
 *    
L
hidden1/truncated_normal/stddevConst*
dtype0*
valueB
 *%I=
�
(hidden1/truncated_normal/TruncatedNormalTruncatedNormalhidden1/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0
w
hidden1/truncated_normal/mulMul(hidden1/truncated_normal/TruncatedNormalhidden1/truncated_normal/stddev*
T0
e
hidden1/truncated_normalAddhidden1/truncated_normal/mulhidden1/truncated_normal/mean*
T0
e
hidden1/weights
VariableV2*
dtype0*
shape:
��*
	container *
shared_name 
�
hidden1/weights/AssignAssignhidden1/weightshidden1/truncated_normal*
validate_shape(*"
_class
loc:@hidden1/weights*
use_locking(*
T0
^
hidden1/weights/readIdentityhidden1/weights*"
_class
loc:@hidden1/weights*
T0
?
hidden1/zerosConst*
dtype0*
valueB�*    
_
hidden1/biases
VariableV2*
dtype0*
shape:�*
	container *
shared_name 
�
hidden1/biases/AssignAssignhidden1/biaseshidden1/zeros*
validate_shape(*!
_class
loc:@hidden1/biases*
use_locking(*
T0
[
hidden1/biases/readIdentityhidden1/biases*!
_class
loc:@hidden1/biases*
T0
d
hidden1/MatMulMatMulinputhidden1/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden1/addAddhidden1/MatMulhidden1/biases/read*
T0
*
hidden1/ReluReluhidden1/add*
T0
S
hidden2/truncated_normal/shapeConst*
dtype0*
valueB"�       
J
hidden2/truncated_normal/meanConst*
dtype0*
valueB
 *    
L
hidden2/truncated_normal/stddevConst*
dtype0*
valueB
 *��=
�
(hidden2/truncated_normal/TruncatedNormalTruncatedNormalhidden2/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0
w
hidden2/truncated_normal/mulMul(hidden2/truncated_normal/TruncatedNormalhidden2/truncated_normal/stddev*
T0
e
hidden2/truncated_normalAddhidden2/truncated_normal/mulhidden2/truncated_normal/mean*
T0
d
hidden2/weights
VariableV2*
dtype0*
shape:	� *
	container *
shared_name 
�
hidden2/weights/AssignAssignhidden2/weightshidden2/truncated_normal*
validate_shape(*"
_class
loc:@hidden2/weights*
use_locking(*
T0
^
hidden2/weights/readIdentityhidden2/weights*"
_class
loc:@hidden2/weights*
T0
>
hidden2/zerosConst*
dtype0*
valueB *    
^
hidden2/biases
VariableV2*
dtype0*
shape: *
	container *
shared_name 
�
hidden2/biases/AssignAssignhidden2/biaseshidden2/zeros*
validate_shape(*!
_class
loc:@hidden2/biases*
use_locking(*
T0
[
hidden2/biases/readIdentityhidden2/biases*!
_class
loc:@hidden2/biases*
T0
k
hidden2/MatMulMatMulhidden1/Reluhidden2/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden2/addAddhidden2/MatMulhidden2/biases/read*
T0
*
hidden2/ReluReluhidden2/add*
T0
Z
%softmax_linear/truncated_normal/shapeConst*
dtype0*
valueB"    
   
Q
$softmax_linear/truncated_normal/meanConst*
dtype0*
valueB
 *    
S
&softmax_linear/truncated_normal/stddevConst*
dtype0*
valueB
 *�5>
�
/softmax_linear/truncated_normal/TruncatedNormalTruncatedNormal%softmax_linear/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0
�
#softmax_linear/truncated_normal/mulMul/softmax_linear/truncated_normal/TruncatedNormal&softmax_linear/truncated_normal/stddev*
T0
z
softmax_linear/truncated_normalAdd#softmax_linear/truncated_normal/mul$softmax_linear/truncated_normal/mean*
T0
j
softmax_linear/weights
VariableV2*
dtype0*
shape
: 
*
	container *
shared_name 
�
softmax_linear/weights/AssignAssignsoftmax_linear/weightssoftmax_linear/truncated_normal*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0
s
softmax_linear/weights/readIdentitysoftmax_linear/weights*)
_class
loc:@softmax_linear/weights*
T0
E
softmax_linear/zerosConst*
dtype0*
valueB
*    
e
softmax_linear/biases
VariableV2*
dtype0*
shape:
*
	container *
shared_name 
�
softmax_linear/biases/AssignAssignsoftmax_linear/biasessoftmax_linear/zeros*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0
p
softmax_linear/biases/readIdentitysoftmax_linear/biases*(
_class
loc:@softmax_linear/biases*
T0
y
softmax_linear/MatMulMatMulhidden2/Relusoftmax_linear/weights/read*
transpose_b( *
transpose_a( *
T0
U
softmax_linear/addAddsoftmax_linear/MatMulsoftmax_linear/biases/read*
T0
0
ToInt64Castinput_1*

DstT0	*

SrcT0
<
xentropy/ShapeConst*
dtype0*
valueB:d
m
xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitssoftmax_linear/addToInt64*
T0*
Tlabels0	
3
ConstConst*
dtype0*
valueB: 
U
xentropy_meanMeanxentropy/xentropyConst*
T0*
	keep_dims( *

Tidx0
6
	loss/tagsConst*
dtype0*
valueB
 Bloss
8
lossScalarSummary	loss/tagsxentropy_mean*
T0
C
global_step/initial_valueConst*
dtype0*
value	B : 
W
global_step
VariableV2*
dtype0*
shape: *
	container *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0
R
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0
8
gradients/ShapeConst*
dtype0*
valueB 
<
gradients/ConstConst*
dtype0*
valueB
 *  �?
A
gradients/FillFillgradients/Shapegradients/Const*
T0
X
*gradients/xentropy_mean_grad/Reshape/shapeConst*
dtype0*
valueB:
�
$gradients/xentropy_mean_grad/ReshapeReshapegradients/Fill*gradients/xentropy_mean_grad/Reshape/shape*
T0*
Tshape0
Y
+gradients/xentropy_mean_grad/Tile/multiplesConst*
dtype0*
valueB:d
�
!gradients/xentropy_mean_grad/TileTile$gradients/xentropy_mean_grad/Reshape+gradients/xentropy_mean_grad/Tile/multiples*

Tmultiples0*
T0
P
"gradients/xentropy_mean_grad/ShapeConst*
dtype0*
valueB:d
M
$gradients/xentropy_mean_grad/Shape_1Const*
dtype0*
valueB 
P
"gradients/xentropy_mean_grad/ConstConst*
dtype0*
valueB: 
�
!gradients/xentropy_mean_grad/ProdProd"gradients/xentropy_mean_grad/Shape"gradients/xentropy_mean_grad/Const*
T0*
	keep_dims( *

Tidx0
R
$gradients/xentropy_mean_grad/Const_1Const*
dtype0*
valueB: 
�
#gradients/xentropy_mean_grad/Prod_1Prod$gradients/xentropy_mean_grad/Shape_1$gradients/xentropy_mean_grad/Const_1*
T0*
	keep_dims( *

Tidx0
P
&gradients/xentropy_mean_grad/Maximum/yConst*
dtype0*
value	B :
�
$gradients/xentropy_mean_grad/MaximumMaximum#gradients/xentropy_mean_grad/Prod_1&gradients/xentropy_mean_grad/Maximum/y*
T0
�
%gradients/xentropy_mean_grad/floordivFloorDiv!gradients/xentropy_mean_grad/Prod$gradients/xentropy_mean_grad/Maximum*
T0
h
!gradients/xentropy_mean_grad/CastCast%gradients/xentropy_mean_grad/floordiv*

DstT0*

SrcT0
~
$gradients/xentropy_mean_grad/truedivRealDiv!gradients/xentropy_mean_grad/Tile!gradients/xentropy_mean_grad/Cast*
T0
I
gradients/zeros_likeConst*
dtype0*
valueBd
*    
�
0gradients/xentropy/xentropy_grad/PreventGradientPreventGradientxentropy/xentropy:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
b
/gradients/xentropy/xentropy_grad/ExpandDims/dimConst*
dtype0*
valueB :
���������
�
+gradients/xentropy/xentropy_grad/ExpandDims
ExpandDims$gradients/xentropy_mean_grad/truediv/gradients/xentropy/xentropy_grad/ExpandDims/dim*

Tdim0*
T0
�
$gradients/xentropy/xentropy_grad/mulMul+gradients/xentropy/xentropy_grad/ExpandDims0gradients/xentropy/xentropy_grad/PreventGradient*
T0
\
'gradients/softmax_linear/add_grad/ShapeConst*
dtype0*
valueB"d   
   
W
)gradients/softmax_linear/add_grad/Shape_1Const*
dtype0*
valueB:

�
7gradients/softmax_linear/add_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/softmax_linear/add_grad/Shape)gradients/softmax_linear/add_grad/Shape_1*
T0
�
%gradients/softmax_linear/add_grad/SumSum$gradients/xentropy/xentropy_grad/mul7gradients/softmax_linear/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
)gradients/softmax_linear/add_grad/ReshapeReshape%gradients/softmax_linear/add_grad/Sum'gradients/softmax_linear/add_grad/Shape*
T0*
Tshape0
�
'gradients/softmax_linear/add_grad/Sum_1Sum$gradients/xentropy/xentropy_grad/mul9gradients/softmax_linear/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
+gradients/softmax_linear/add_grad/Reshape_1Reshape'gradients/softmax_linear/add_grad/Sum_1)gradients/softmax_linear/add_grad/Shape_1*
T0*
Tshape0
�
2gradients/softmax_linear/add_grad/tuple/group_depsNoOp*^gradients/softmax_linear/add_grad/Reshape,^gradients/softmax_linear/add_grad/Reshape_1
�
:gradients/softmax_linear/add_grad/tuple/control_dependencyIdentity)gradients/softmax_linear/add_grad/Reshape3^gradients/softmax_linear/add_grad/tuple/group_deps*<
_class2
0.loc:@gradients/softmax_linear/add_grad/Reshape*
T0
�
<gradients/softmax_linear/add_grad/tuple/control_dependency_1Identity+gradients/softmax_linear/add_grad/Reshape_13^gradients/softmax_linear/add_grad/tuple/group_deps*>
_class4
20loc:@gradients/softmax_linear/add_grad/Reshape_1*
T0
�
+gradients/softmax_linear/MatMul_grad/MatMulMatMul:gradients/softmax_linear/add_grad/tuple/control_dependencysoftmax_linear/weights/read*
transpose_b(*
transpose_a( *
T0
�
-gradients/softmax_linear/MatMul_grad/MatMul_1MatMulhidden2/Relu:gradients/softmax_linear/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0
�
5gradients/softmax_linear/MatMul_grad/tuple/group_depsNoOp,^gradients/softmax_linear/MatMul_grad/MatMul.^gradients/softmax_linear/MatMul_grad/MatMul_1
�
=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyIdentity+gradients/softmax_linear/MatMul_grad/MatMul6^gradients/softmax_linear/MatMul_grad/tuple/group_deps*>
_class4
20loc:@gradients/softmax_linear/MatMul_grad/MatMul*
T0
�
?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1Identity-gradients/softmax_linear/MatMul_grad/MatMul_16^gradients/softmax_linear/MatMul_grad/tuple/group_deps*@
_class6
42loc:@gradients/softmax_linear/MatMul_grad/MatMul_1*
T0
�
$gradients/hidden2/Relu_grad/ReluGradReluGrad=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyhidden2/Relu*
T0
U
 gradients/hidden2/add_grad/ShapeConst*
dtype0*
valueB"d       
P
"gradients/hidden2/add_grad/Shape_1Const*
dtype0*
valueB: 
�
0gradients/hidden2/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/hidden2/add_grad/Shape"gradients/hidden2/add_grad/Shape_1*
T0
�
gradients/hidden2/add_grad/SumSum$gradients/hidden2/Relu_grad/ReluGrad0gradients/hidden2/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
"gradients/hidden2/add_grad/ReshapeReshapegradients/hidden2/add_grad/Sum gradients/hidden2/add_grad/Shape*
T0*
Tshape0
�
 gradients/hidden2/add_grad/Sum_1Sum$gradients/hidden2/Relu_grad/ReluGrad2gradients/hidden2/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
$gradients/hidden2/add_grad/Reshape_1Reshape gradients/hidden2/add_grad/Sum_1"gradients/hidden2/add_grad/Shape_1*
T0*
Tshape0

+gradients/hidden2/add_grad/tuple/group_depsNoOp#^gradients/hidden2/add_grad/Reshape%^gradients/hidden2/add_grad/Reshape_1
�
3gradients/hidden2/add_grad/tuple/control_dependencyIdentity"gradients/hidden2/add_grad/Reshape,^gradients/hidden2/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/hidden2/add_grad/Reshape*
T0
�
5gradients/hidden2/add_grad/tuple/control_dependency_1Identity$gradients/hidden2/add_grad/Reshape_1,^gradients/hidden2/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden2/add_grad/Reshape_1*
T0
�
$gradients/hidden2/MatMul_grad/MatMulMatMul3gradients/hidden2/add_grad/tuple/control_dependencyhidden2/weights/read*
transpose_b(*
transpose_a( *
T0
�
&gradients/hidden2/MatMul_grad/MatMul_1MatMulhidden1/Relu3gradients/hidden2/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0
�
.gradients/hidden2/MatMul_grad/tuple/group_depsNoOp%^gradients/hidden2/MatMul_grad/MatMul'^gradients/hidden2/MatMul_grad/MatMul_1
�
6gradients/hidden2/MatMul_grad/tuple/control_dependencyIdentity$gradients/hidden2/MatMul_grad/MatMul/^gradients/hidden2/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden2/MatMul_grad/MatMul*
T0
�
8gradients/hidden2/MatMul_grad/tuple/control_dependency_1Identity&gradients/hidden2/MatMul_grad/MatMul_1/^gradients/hidden2/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/hidden2/MatMul_grad/MatMul_1*
T0

$gradients/hidden1/Relu_grad/ReluGradReluGrad6gradients/hidden2/MatMul_grad/tuple/control_dependencyhidden1/Relu*
T0
U
 gradients/hidden1/add_grad/ShapeConst*
dtype0*
valueB"d   �   
Q
"gradients/hidden1/add_grad/Shape_1Const*
dtype0*
valueB:�
�
0gradients/hidden1/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/hidden1/add_grad/Shape"gradients/hidden1/add_grad/Shape_1*
T0
�
gradients/hidden1/add_grad/SumSum$gradients/hidden1/Relu_grad/ReluGrad0gradients/hidden1/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
"gradients/hidden1/add_grad/ReshapeReshapegradients/hidden1/add_grad/Sum gradients/hidden1/add_grad/Shape*
T0*
Tshape0
�
 gradients/hidden1/add_grad/Sum_1Sum$gradients/hidden1/Relu_grad/ReluGrad2gradients/hidden1/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
$gradients/hidden1/add_grad/Reshape_1Reshape gradients/hidden1/add_grad/Sum_1"gradients/hidden1/add_grad/Shape_1*
T0*
Tshape0

+gradients/hidden1/add_grad/tuple/group_depsNoOp#^gradients/hidden1/add_grad/Reshape%^gradients/hidden1/add_grad/Reshape_1
�
3gradients/hidden1/add_grad/tuple/control_dependencyIdentity"gradients/hidden1/add_grad/Reshape,^gradients/hidden1/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/hidden1/add_grad/Reshape*
T0
�
5gradients/hidden1/add_grad/tuple/control_dependency_1Identity$gradients/hidden1/add_grad/Reshape_1,^gradients/hidden1/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden1/add_grad/Reshape_1*
T0
�
$gradients/hidden1/MatMul_grad/MatMulMatMul3gradients/hidden1/add_grad/tuple/control_dependencyhidden1/weights/read*
transpose_b(*
transpose_a( *
T0
�
&gradients/hidden1/MatMul_grad/MatMul_1MatMulinput3gradients/hidden1/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0
�
.gradients/hidden1/MatMul_grad/tuple/group_depsNoOp%^gradients/hidden1/MatMul_grad/MatMul'^gradients/hidden1/MatMul_grad/MatMul_1
�
6gradients/hidden1/MatMul_grad/tuple/control_dependencyIdentity$gradients/hidden1/MatMul_grad/MatMul/^gradients/hidden1/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden1/MatMul_grad/MatMul*
T0
�
8gradients/hidden1/MatMul_grad/tuple/control_dependency_1Identity&gradients/hidden1/MatMul_grad/MatMul_1/^gradients/hidden1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/hidden1/MatMul_grad/MatMul_1*
T0
J
GradientDescent/learning_rateConst*
dtype0*
valueB
 *
�#<
�
;GradientDescent/update_hidden1/weights/ApplyGradientDescentApplyGradientDescenthidden1/weightsGradientDescent/learning_rate8gradients/hidden1/MatMul_grad/tuple/control_dependency_1*"
_class
loc:@hidden1/weights*
use_locking( *
T0
�
:GradientDescent/update_hidden1/biases/ApplyGradientDescentApplyGradientDescenthidden1/biasesGradientDescent/learning_rate5gradients/hidden1/add_grad/tuple/control_dependency_1*!
_class
loc:@hidden1/biases*
use_locking( *
T0
�
;GradientDescent/update_hidden2/weights/ApplyGradientDescentApplyGradientDescenthidden2/weightsGradientDescent/learning_rate8gradients/hidden2/MatMul_grad/tuple/control_dependency_1*"
_class
loc:@hidden2/weights*
use_locking( *
T0
�
:GradientDescent/update_hidden2/biases/ApplyGradientDescentApplyGradientDescenthidden2/biasesGradientDescent/learning_rate5gradients/hidden2/add_grad/tuple/control_dependency_1*!
_class
loc:@hidden2/biases*
use_locking( *
T0
�
BGradientDescent/update_softmax_linear/weights/ApplyGradientDescentApplyGradientDescentsoftmax_linear/weightsGradientDescent/learning_rate?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1*)
_class
loc:@softmax_linear/weights*
use_locking( *
T0
�
AGradientDescent/update_softmax_linear/biases/ApplyGradientDescentApplyGradientDescentsoftmax_linear/biasesGradientDescent/learning_rate<gradients/softmax_linear/add_grad/tuple/control_dependency_1*(
_class
loc:@softmax_linear/biases*
use_locking( *
T0
�
GradientDescent/updateNoOp<^GradientDescent/update_hidden1/weights/ApplyGradientDescent;^GradientDescent/update_hidden1/biases/ApplyGradientDescent<^GradientDescent/update_hidden2/weights/ApplyGradientDescent;^GradientDescent/update_hidden2/biases/ApplyGradientDescentC^GradientDescent/update_softmax_linear/weights/ApplyGradientDescentB^GradientDescent/update_softmax_linear/biases/ApplyGradientDescent
x
GradientDescent/valueConst^GradientDescent/update*
dtype0*
_class
loc:@global_step*
value	B :
|
GradientDescent	AssignAddglobal_stepGradientDescent/value*
_class
loc:@global_step*
use_locking( *
T0
?
InTopKInTopKsoftmax_linear/addinput_1*
k*
T0
,
CastCastInTopK*

DstT0*

SrcT0

5
Const_1Const*
dtype0*
valueB: 
?
SumSumCastConst_1*
T0*
	keep_dims( *

Tidx0
1
Merge/MergeSummaryMergeSummaryloss*
N
�
initNoOp^hidden1/weights/Assign^hidden1/biases/Assign^hidden2/weights/Assign^hidden2/biases/Assign^softmax_linear/weights/Assign^softmax_linear/biases/Assign^global_step/Assign
8

save/ConstConst*
dtype0*
valueB Bmodel
�
save/SaveV2/tensor_namesConst*
dtype0*�
value�B�Bglobal_stepBhidden1/biasesBhidden1/weightsBhidden2/biasesBhidden2/weightsBsoftmax_linear/biasesBsoftmax_linear/weights
U
save/SaveV2/shape_and_slicesConst*
dtype0*!
valueBB B B B B B B 
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_stephidden1/biaseshidden1/weightshidden2/biaseshidden2/weightssoftmax_linear/biasessoftmax_linear/weights*
dtypes
	2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0
S
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step
L
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
�
save/AssignAssignglobal_stepsave/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0
X
save/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBhidden1/biases
N
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
�
save/Assign_1Assignhidden1/biasessave/RestoreV2_1*
validate_shape(*!
_class
loc:@hidden1/biases*
use_locking(*
T0
Y
save/RestoreV2_2/tensor_namesConst*
dtype0*$
valueBBhidden1/weights
N
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2
�
save/Assign_2Assignhidden1/weightssave/RestoreV2_2*
validate_shape(*"
_class
loc:@hidden1/weights*
use_locking(*
T0
X
save/RestoreV2_3/tensor_namesConst*
dtype0*#
valueBBhidden2/biases
N
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2
�
save/Assign_3Assignhidden2/biasessave/RestoreV2_3*
validate_shape(*!
_class
loc:@hidden2/biases*
use_locking(*
T0
Y
save/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBhidden2/weights
N
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2
�
save/Assign_4Assignhidden2/weightssave/RestoreV2_4*
validate_shape(*"
_class
loc:@hidden2/weights*
use_locking(*
T0
_
save/RestoreV2_5/tensor_namesConst*
dtype0**
value!BBsoftmax_linear/biases
N
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2
�
save/Assign_5Assignsoftmax_linear/biasessave/RestoreV2_5*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0
`
save/RestoreV2_6/tensor_namesConst*
dtype0*+
value"B Bsoftmax_linear/weights
N
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2
�
save/Assign_6Assignsoftmax_linear/weightssave/RestoreV2_6*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6"