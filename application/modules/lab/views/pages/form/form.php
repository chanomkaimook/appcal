<div class="row">
    <div class="form-group col-6">
        <span class="required"><i class="mdi mdi-svg"></i></span>
        <label class="text-capitalize"><?= mb_ucfirst($this->lang->line('_code')) ?></label>
        <input type="text" class="form-control" name="code" placeholder="ระบุ" value="" required>
    </div>
    <div class="form-group col-6">
        <label class="text-capitalize">Dep Code</label>
        <input type="text" class="form-control" name="depcode" placeholder="ระบุ">
    </div>
</div>
<div class="row">
    <div class="form-group col-6">
        <span class="required"><i class="mdi mdi-svg"></i></span>
        <label class="text-capitalize"><?= mb_ucfirst($this->lang->line('_name_th')) ?></label>
        <input type="text" class="form-control" name="name" placeholder="ระบุ" value="" required>
    </div>
    <div class="form-group col-6">
        <label class="text-capitalize"><?= mb_ucfirst($this->lang->line('_name_us')) ?></label>
        <input type="text" class="form-control" name="name_us" placeholder="ระบุ">
    </div>
</div>
<div class="row">
    <div class="form-group col-6">
        <label class="text-capitalize">interval time</label>
        <input type="text" class="form-control int_only" name="intervaltime" placeholder="ระบุ" value="">
    </div>
    <div class="form-group col-6">
        <label class="text-capitalize">project code</label>
        <input type="text" class="form-control" name="projectcode" placeholder="ระบุ">
    </div>
</div>
<div class="row">
    <div class="form-group col-12">
        <label class="text-capitalize"><?= mb_ucfirst($this->lang->line('_remark')) ?></label>
        <textarea class="form-control" rows="2" name="remark"></textarea>
    </div>
</div>