<?php
/**
 * @package		com_hshrndprojects
 * @copyright	Copyright (c)2016 Jens H. Kowal / me.com
 * @license		GNU General Public License version 2 or later
 */

namespace HSH\HSHRnDReview\Admin\Model;

use FOF30\Container\Container;
use FOF30\Model\DataModel;

class Projects extends DataModel
{
	public function buildQuery($overrideLimits = false)
    {
	    $query = parent::buildQuery($overrideLimits);

	    // Manipulate $query to select more fields, add your joins and everything else you please. $query is a standard JDatabaseQuery object.

		//SQL Query:
        //select * from pk3mz_hshrndreview_projects, pk3mz_hshrndreview_statuses where pk3mz_hshrndreview_projects.hshrndreview_project_id = pk3mz_hshrndreview_statuses.hshrndreview_project_id

		//$db=$this->getDbo();
		//              $query
		//                  ->select(array('p.*', 's.*'))
		//                  ->from($db->quoteName('#__hshrndreview_projects', 'p'))
		//                  ->join('INNER', $db->quoteName('#__hshrndreview_statuses', 's') . ' ON (' . $db->quoteName('p.hshrndreview_project_id') . ' = ' . $db->quoteName('s.hshrndreview_project_id') . ')');
	    return $query;
	}

}