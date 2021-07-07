<div class="modal fade" id="modal-form" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <form  id="form-item" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title"></h3>
                </div>


                <div class="modal-body">
                    <input type="hidden" id="id" name="id">


                    <div class="box-body">
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                            <span class="text-danger"><span id="available"></span>.</span>
                            <span class="help-block with-errors"></span>
                        </div>

                        {{-- <div class="form-group">
                            <label>Barcode</label>
                            <input type="text" class="form-control" id="barcode" name="barcode" required>
                            <span class="help-block with-errors"></span>
                        </div> --}}

                        <div class="form-group">
                            <label>Price</label>
                            <input type="text" class="form-control" id="price" name="price" required>
                            <span class="help-block with-errors"></span>
                        </div>

                        <div class="form-group">
                            <label>Quantity</label>
                            <input type="text" class="form-control" id="qty" name="qty" value="1" required>
                            <span class="help-block with-errors"></span>
                        </div>

                        <div class="form-group">
                            <label>Image (optional)</label>
                            <input type="file" class="form-control" id="image" name="image" >
                            <span class="help-block with-errors"></span>
                        </div>

                        <div class="form-group">
                            <label>Category</label>
                            <div>
                                {!! Form::select('category_id', $category, 0 , ['class' => 'form-control select2', 'placeholder' => 'please select', 'id' => 'category_id', 'required']) !!}
                                <span class="help-block with-errors"></span>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>

            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
