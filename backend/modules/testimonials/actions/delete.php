<?php

/**
 * Delete a testimonial.
 *
 * @author Jan Moesen <jan.moesen@netlash.com>
 */
class BackendTestimonialsDelete extends BackendBaseActionDelete
{
	/**
	 * Execute the current action.
	 */
	public function execute()
	{
		// get parameters
		$this->id = $this->getParameter('id', 'int');

		// does the item exist
		if($this->id !== null && BackendTestimonialsModel::exists($this->id))
		{
			// call parent, this will probably add some general CSS/JS or other required files
			parent::execute();

			// get the current testimonial
			$this->record = BackendTestimonialsModel::get($this->id);

			// delete it
			BackendTestimonialsModel::delete($this->id);

			// trigger event
			BackendModel::triggerEvent($this->getModule(), 'after_add_image', array('item' => $this->record));

			// redirect back to the index
			$this->redirect(BackendModel::createURLForAction('index') . '&report=deleted&var=' . urlencode($this->record['name']));
		}

		// no testimonial found
		else $this->redirect(BackendModel::createURLForAction('index') . '&error=non-existing');
	}
}
