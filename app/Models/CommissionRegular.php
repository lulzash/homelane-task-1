<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommissionRegular extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'commission_regular';

    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'config_id',
        'category_id',
        'is_mrp',
        'order_booking',
        'design_complete',
        'post_production',
        'additional_inst',
        'sqp_sqlt_install',
        'is_deleted',
        'created_on',
        'created_by',
        'modified_on',
        'modified_by'
    ];
}
