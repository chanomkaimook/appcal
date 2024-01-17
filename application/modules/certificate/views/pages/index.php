<div class="content">
    <?php
    if (is_Mobile()) {
    ?>
        <style>
            .dropdown-menu-right {
                right: auto !important;
                left: 0px !important;
            }
        </style>
    <?php
    }
    ?>
    <!-- Start Content-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card-box">
                    <ul class="nav nav-tabs tabs-bordered">
                        <li class="nav-item">
                            <a href="#table" data-toggle="tab" aria-expanded="false" class="nav-link active">
                                <span class="d-block d-sm-none"><i class="mdi mdi-home-variant"></i></span>
                                <span class="d-none d-sm-block text-capitalize">Calibration</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#overview" data-toggle="tab" aria-expanded="true" class="nav-link">
                                <span class="d-block d-sm-none"><i class="mdi mdi-account"></i></span>
                                <span class="d-none d-sm-block">Reference Standard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#setting" data-toggle="tab" aria-expanded="false" class="nav-link">
                                <span class="d-block d-sm-none"><i class="mdi mdi-email-outline"></i></span>
                                <span class="d-none d-sm-block">Condition</span>
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="table">
                            Calibration
                        </div>
                        <div class="tab-pane" id="overview">
                            Reference Standard
                        </div>
                        <div class="tab-pane" id="setting">
                            Condition
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div> <!-- end container-fluid -->

</div> <!-- end content -->

<script>
    let data_1_ready = 0,
        data_2_ready = 0;
    //  =========================
    //  =========================
    //  Setting
    //  =========================
    //  =========================

    //  *
    //  * Dom
    //  * setting variable
    //  *
    const d = document
    const datatable_name = '#datatable'

    //  *
    //  * Button
    //  * setting variable
    //  *
    const btn_view = ".btn-view"
    const btn_add = '.btn-add'
    const btn_edit = '.btn-edit'
    const btn_del = '.btn-del'
    const btn_submit = 'button[type=submit]'
    const btn_print = '.btn-print'

    //  *
    //  * Form
    //  * setting variable
    //  *
    const form_name = '#frm'
    const form_hidden_id = '[name=frm_hidden_id]'

    //  *
    //  * Modal
    //  * setting variable
    //  *
    const modal_roles = '#modal_roles'
    const modal = '.modal'
    const modal_body = '.modal .modal-body'
    const modal_body_view = '.modal .modal-body-view'
    const modal_body_form = '.modal .modal-body-form'

    //  =========================
    //  =========================
    //  End Setting
    //  =========================
    //  =========================

    $('body .content:first').append(loading)
    $('body .container-fluid').css('display', 'none')

    checkReady()

    function checkReady() {
        if (data_1_ready) {
            $('body .container-fluid').fadeIn()
            $('body .loading').remove()
        }
    }

    $(function() {

        // 
        // function to process data
        // loading data
        readyData()

        async function readyData() {
            let result1 = await new Promise((resolve, reject) => {
                resolve(getData())
            })
            let result2 = await new Promise((resolve, reject) => {
                resolve(data_1_ready = 1)
            });

            checkReady()
        }

    })
</script>
<?php include('script.php') ?>
<?php include('script_crud.php') ?>
<?php include('script_datatable.php') ?>