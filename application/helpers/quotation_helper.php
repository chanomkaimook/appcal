<?php

function quotation_showCode($row, $showRevision = false) {
    if($row['code'] && $row['revise_seq'] > 0) {
        return $showRevision ? $row['code'].'-'.sprintf('%01d', $row['revise_seq']) : $row['code'];
    } else  {
        return $row['code'];
    }
}
function bill_showCode($row, $showRevision = false) {
    if($row['code'] && $row['revise_seq'] > 0) {
        return $showRevision ? $row['code'].'-'.sprintf('%01d', $row['revise_seq']) : $row['code'];
    } else  {
        return $row['code'];
    }
}