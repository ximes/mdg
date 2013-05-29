<?php

/**
 * All model functions for the testimonials module.
 *
 * @author Jan Moesen <jan.moesen@netlash.com>
 * @author Matthias Mullie <matthias@mullie.eu>
 */
class BackendTestimonialsModel
{
	/**
	 * Overview of the items.
	 *
	 * @var	string
	 */
	const QRY_BROWSE =
		'SELECT id, name, sequence
	     FROM testimonials
	     WHERE language = ?
	     ORDER BY sequence';

	/**
	 * Delete a testimonial.
	 *
	 * @param int $id The id of the testimonial to delete.
	 */
	public static function delete($id)
	{
		BackendModel::getContainer()->get('database')->delete('testimonials', 'id = ?', array((int) $id));
	}

	/**
	 * Does the testimonial exist?
	 *
	 * @param int $id The id of the testimonial to check for existence.
	 * @return bool
	 */
	public static function exists($id)
	{
		return (bool) BackendModel::getContainer()->get('database')->getVar(
			'SELECT COUNT(id)
			 FROM testimonials
			 WHERE id = ?',
			array((int) $id)
		);
	}

	/**
	 * Get all data for the testimonial with the given ID.
	 *
	 * @param int $id The id for the testimonial to get.
	 * @return array
	 */
	public static function get($id)
	{
		return (array) BackendModel::getContainer()->get('database')->getRecord(
			'SELECT *, UNIX_TIMESTAMP(created_on) AS created_on, UNIX_TIMESTAMP(edited_on) AS edited_on
		     FROM testimonials
		     WHERE id = ?
		     LIMIT 1',
			array((int) $id)
		);
	}

	/**
	 * Get the max sequence id for a testimonial
	 *
	 * @return int
	 */
	public static function getMaximumSequence()
	{
		return (int) BackendModel::getContainer()->get('database')->getVar(
			'SELECT MAX(sequence)
			 FROM testimonials'
		);
	}

	/**
	 * Add a new testimonial.
	 *
	 * @param array $item The data to insert.
	 * @return int The ID of the newly inserted testimonial.
	 */
	public static function insert(array $item)
	{
		return BackendModel::getContainer()->get('database')->insert('testimonials', $item);
	}

	/**
	 * Update an existing testimonial.
	 *
	 * @param array $item The new data.
	 * @return int
	 */
	public static function update(array $item)
	{
		return BackendModel::getContainer()->get('database')->update('testimonials', $item, 'id = ?', array((int) $item['id']));
	}
}
