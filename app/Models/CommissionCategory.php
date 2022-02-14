<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommissionCategory extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'commission_category';

    /**
     * Get the commission category id by name
     * @param string $name
     *
     * @return int id
     *
    */
    public static function getIdByName($name)
    {
        return self::where('name', $name)->value('id') ?? 1;
    }
}
