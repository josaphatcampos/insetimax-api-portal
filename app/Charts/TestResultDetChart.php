<?php

declare(strict_types = 1);

namespace App\Charts;

use Chartisan\PHP\Chartisan;
use ConsoleTVs\Charts\BaseChart;
use Illuminate\Http\Request;
use App\Models\TestResult;
use App\Http\Controllers\TestResultController;

class TestResultDetChart extends BaseChart {

    /**
     * Determines the chart name to be used on the
     * route. If null, the name will be a snake_case
     * version of the class name.
     */
    public ?string $name = 'test-result-det-chart';

    /**
     * Determines the name suffix of the chart route.
     * This will also be used to get the chart URL
     * from the blade directrive. If null, the chart
     * name will be used.
     */
    public ?string $routeName = 'test-result-det-chart';

    /**
     * Determines the prefix that will be used by the chart
     * endpoint.
     */
    public ?string $prefix = 'chartjs';

    /**
     * Determines the middlewares that will be applied
     * to the chart endpoint.
     */
    public ?array $middlewares = ['auth'];

    /**
     * Handles the HTTP request for the given chart.
     * It must always return an instance of Chartisan
     * and never a string or an array.
     */
    public function handler(Request $request): Chartisan {
        $id = $request->id;

        $testResultController = new TestResultController();
        $result = $testResultController->getResult($id);

        // Cálculo simples. Teste: Prospecção
        if ($result->calc_type == 1) {
            return Chartisan::build()
                    ->labels($result->labels)
                    ->dataset($result->dataset_names[0], array($result->dataset_values[0]))
                    ->dataset($result->dataset_names[1], array($result->dataset_values[1]));
        }

        // Maior qtd. por categoria. Teste: Avaliação Comportamental (DISC)
        if ($result->calc_type == 2) {
            return Chartisan::build()
                    ->labels($result->labels)
                    ->dataset($result->dataset_names[0], array($result->dataset_values[0]))
                    ->dataset($result->dataset_names[1], array($result->dataset_values[1]))
                    ->dataset($result->dataset_names[2], array($result->dataset_values[2]))
                    ->dataset($result->dataset_names[3], array($result->dataset_values[3]));
        }

        // Percentual por categoria. Teste: Tríade do tempo
        if ($result->calc_type == 3) {
            return Chartisan::build()
                    ->labels($result->labels)
                    ->dataset($result->dataset_names[0], array($result->dataset_values[0]))
                    ->dataset($result->dataset_names[1], array($result->dataset_values[1]))
                    ->dataset($result->dataset_names[2], array($result->dataset_values[2]));
        }

        return Chartisan::build()
                ->labels(array('Pontuação final'))
                ->dataset('Resultado atual', array(65))
                ->dataset('A melhorar', array(45));

    }

}