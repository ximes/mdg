<?php

/**
 * Installer for the testimonials module
 *
 * @author Jan Moesen <jan.moesen@netlash.com>
 */
class TestimonialsInstaller extends ModuleInstaller
{
	/**
	 * Install the module.
	 */
	public function install()
	{
		// load install.sql
		$this->importSQL(dirname(__FILE__) . '/data/install.sql');

		// add 'testimonials' as a module
		$this->addModule('testimonials', 'The testimonials module.');

		// import locale
		$this->importLocale(dirname(__FILE__) . '/data/locale.xml');

		// module rights
		$this->setModuleRights(1, 'testimonials');

		// action rights
		$this->setActionRights(1, 'testimonials', 'add');
		$this->setActionRights(1, 'testimonials', 'delete');
		$this->setActionRights(1, 'testimonials', 'edit');
		$this->setActionRights(1, 'testimonials', 'index');
		$this->setActionRights(1, 'testimonials', 'sequence');

		// set navigation
		$navigationModulesId = $this->setNavigation(null, 'Modules');
		$this->setNavigation($navigationModulesId, 'Testimonials', 'testimonials/index', array('testimonials/add', 'testimonials/edit'));

		// add extra's
		$this->insertExtra('testimonials', 'block', 'AllTestimonials', 'all_testimonials', null, 'N');
		$this->insertExtra('testimonials', 'widget', 'RandomTestimonial', 'random_testimonial', null, 'N');
	}
}
