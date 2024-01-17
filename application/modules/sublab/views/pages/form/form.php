<div class="row">
    <div class="form-group col-6">
        <span class="required"><i class="mdi mdi-svg"></i></span>
        <label class="text-capitalize"><?= mb_ucfirst($this->lang->line('_code')) ?></label>
        <input type="text" class="form-control" name="code" placeholder="ระบุ" required>
    </div>
    <div class="form-group col-6">
        <span class="required"><i class="mdi mdi-svg"></i></span>
        <label class="text-capitalize">Lab Code</label>
        <select id="lab_id" name="lab_id" class="form-control" required>
            
        </select>
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
        <input type="text" class="form-control" name="name_us" placeholder="ระบุ" value="">
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
    <div class="form-group col-6">
        <label class="text-capitalize">ambient temperature min</label>
        <input type="text" class="form-control int_only" name="ambienttempmin" placeholder="ระบุ" value="">
    </div>
    <div class="form-group col-6">
        <label class="text-capitalize">ambient temperature max</label>
        <input type="text" class="form-control int_only" name="ambienttempmax" placeholder="ระบุ" value="">
    </div>
</div>
<div class="row">
    <div class="form-group col-6">
        <label class="text-capitalize">relative humidity min</label>
        <input type="text" class="form-control int_only" name="relativehumditymin" placeholder="ระบุ" value="">
    </div>
    <div class="form-group col-6">
        <label class="text-capitalize">relative humidity max</label>
        <input type="text" class="form-control int_only" name="relativehumditymax" placeholder="ระบุ" value="">
    </div>
</div>
<div class="row">
    <div class="form-group col-6">
        <label class="text-capitalize">atmospheric min</label>
        <input type="text" class="form-control int_only" name="atmosphericmin" placeholder="ระบุ" value="">
    </div>
    <div class="form-group col-6">
        <label class="text-capitalize">atmospheric max</label>
        <input type="text" class="form-control int_only" name="atmosphericmax" placeholder="ระบุ" value="">
    </div>
</div>