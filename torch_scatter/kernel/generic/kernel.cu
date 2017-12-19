#ifndef THC_GENERIC_FILE
#define THC_GENERIC_FILE "generic/kernel.cu"
#else

void check(THCState *state, THCTensor *output, THCudaLongTensor *index, THCTensor *input) {
  THCAssertSameGPU(THCTensor_(checkGPU)(state, 1, output, input));
  THCAssertSameGPU(THCudaLongTensor_checkGPU(state, 2, index));
  THArgCheck(THCTensor_(nDimension)(state, output) <= MAX_DIMS, 1, "Tensor too large or too many dimensions");
}

void scatter_(mul)(THCState *state, int dim, THCTensor *output, THCudaLongTensor *index, THCTensor *input) {
  check(state, output, index, input);

  const ptrdiff_t n = THCudaLongTensor_nElement(state, index);
  const dim3 block = dim3(NUM_THREADS);
  printf("mul");
}

void scatter_(div)(THCState *state, int dim, THCTensor *output, THCudaLongTensor *index, THCTensor *input) {
  check(state, output, index, input);
  printf("div");
}

void scatter_(mean)(THCState *state, int dim, THCTensor *output, THCudaLongTensor *index, THCTensor *input, THCTensor *num_output) {
  check(state, output, index, input);
  printf("mean");
}

void scatter_(max)(THCState *state, int dim, THCTensor *output, THCudaLongTensor *index, THCTensor *input, THCudaLongTensor *arg_output) {
  check(state, output, index, input);
  printf("max");
}

void scatter_(min)(THCState *state, int dim, THCTensor *output, THCudaLongTensor *index, THCTensor *input, THCudaLongTensor *arg_output) {
  check(state, output, index, input);
  printf("min");
}

void index_backward(THCState *state, int dim, THCTensor *output, THCudaLongTensor *index, THCTensor *grad, THCudaLongTensor *arg_grad) {
  check(state, output, index, grad);
  printf("index_backward");
}

#endif