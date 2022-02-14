<?php

namespace App\Models;

use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CommissionConfig extends Model
{
    use HasFactory;

    public $timestamps = false;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'commission_config';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'city_id',
        'showroom_id',
        'status',
        'appointment_type',
        'superactive_percentage',
        'referral_bonus',
        'effective_from',
        'effective_to',
        'parent_id',
        'belongs_to',
        'is_deleted',
        'created_on',
        'created_by',
        'modified_on',
        'modified_by',
    ];

    const ID = 402;

    /**
     * Create new commission configuration.
     *
     * @return App\Models\CommissionConfig
    */
    public function create() {
        // get old config
        $config = self::find(self::ID);
        // update `effective_to` of old config
        $config->effective_to = Carbon::now();
        // save old config
        $config->save();

        // create new config by replicating old config
        $newConfig = $config->replicate();

        // update `effective_from` of new config
        $newConfig->effective_from = Carbon::now();
        $newConfig->effective_to = Carbon::now()->addMonth();

        // save and return new config
        $newConfig->save();
        return $newConfig;
    }
}
