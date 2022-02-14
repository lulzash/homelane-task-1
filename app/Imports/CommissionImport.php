<?php

namespace App\Imports;

use App\Models\CommissionConfig;
use App\Models\CommissionRegular;
use App\Models\CommissionCategory;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class CommissionImport implements ToModel, WithValidation, WithHeadingRow
{
    public function __construct($config)
    {
        $this->config = $config;
    }

    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new CommissionRegular([
            'category_id' => CommissionCategory::getIdByName($row['name']),
            'config_id' => $this->config->id,
            'order_booking'   => $row['order_booking'],
            'design_complete' => $row['design'] + $row['order_booking'],
            'post_production' => $row['final'] + $row['design'] + $row['order_booking'],
            'created_on' => now(),
        ]);
    }

    public function rules(): array
    {
        return [
            'name' => [
                'required',
                'exists:App\Models\CommissionCategory,name'
            ],
            'order_booking' => 'required|numeric',
            'design' => 'required|numeric',
            'final' => 'required|numeric',
        ];
    }
}
