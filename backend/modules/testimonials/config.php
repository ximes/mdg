<?php

/**
 * The configuration-object for the testimonials module.
 *
 * @author Jan Moesen <jan.moesen@netlash.com>
 */
final class BackendTestimonialsConfig extends BackendBaseConfig
{
	/**
	 * The default action.
	 *
	 * @var  string
	 */
	protected $defaultAction = 'index';

	/**
	 * The disabled actions.
	 *
	 * @var  array
	 */
	protected $disabledActions = array();

	/**
	 * The disabled AJAX actions.
	 *
	 * @var  array
	 */
	protected $disabledAJAXActions = array();
}
