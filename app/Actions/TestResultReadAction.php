<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class TestResultReadAction extends AbstractAction {

    public function getTitle() {
        return $this->data->test_read == 0 ? 'Concluir' : 'Voltar p/ pendente';
    }

    public function getIcon() {
        return $this->data->test_read == 0 ? 'voyager-check' : 'voyager-x';
    }

    public function getPolicy() {
        return 'read';
    }

    public function getAttributes() {
        return [
            'class' => $this->data->test_read == 0 ? 'btn btn-sm btn-success pull-right' : 'btn btn-sm btn-primary pull-right',
            'style' => 'margin-right: 5px'
        ];
    }

    public function getDefaultRoute() {
        return route('testResult.update.read', array(
            'id' => $this->data->id,
            'read' => $this->data->test_read
        ));
    }

    public function shouldActionDisplayOnDataType() {
        return $this->dataType->slug == 'test-results';
    }

    // public function shouldActionDisplayOnRow($row) {
    //     return $row->read == 0;
    // }

}