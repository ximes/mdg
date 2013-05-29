<?php

/**
 * Show all testimonials.
 *
 * @author Jan Moesen <jan.moesen@netlash.com>
 */
class FrontendTestimonialsIndex extends FrontendBaseBlock
{
	/**
	 * Execute the extra.
	 */
	public function execute()
	{
		// call the parent
		parent::execute();

		// load template
		$this->loadTemplate();

		// parse
		$this->parse();
	}

	/**
	 * Parse the data and compile the template.
	 */
	private function parse()
	{
		// assign the testimonials
		$this->tpl->assign('testimonialsItems', FrontendTestimonialsModel::getAll());
	}
}
