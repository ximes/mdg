<?php

/**
 * In this file we store all generic functions that we will be using in the testimonials module
 *
 * @author Jan Moesen <jan.moesen@netlash.com>
 */
class FrontendTestimonialsModel
{
	/**
	 * Get the visible testimonial with the given ID.
	 *
	 * @param int $id The id of the item to fetch.
	 * @return array
	 */
	public static function get($id)
	{
		return (array) FrontendModel::getContainer()->get('database')->getRecord(
			'SELECT name, testimonial
			 FROM testimonials
			 WHERE id = ? AND hidden = ?
			 LIMIT 1',
			array((int) $id, 'N')
		);
	}

	/**
	 * Get all testimonials.
	 *
	 * @return array
	 */
	public static function getAll()
	{
		return (array) FrontendModel::getContainer()->get('database')->getRecords(
			'SELECT *
			 FROM testimonials
			 WHERE hidden = ? AND language = ?
			 ORDER BY sequence',
			array('N', FRONTEND_LANGUAGE)
		);
	}

	/**
	 * Get a random visible testimonial.
	 *
	 * @return array
	 */
	public static function getRandom()
	{
		// get a random ID
		$allIds = FrontendModel::getContainer()->get('database')->getColumn(
			'SELECT id
			 FROM testimonials
			 WHERE hidden = ? AND language = ?',
			array('N', FRONTEND_LANGUAGE)
		);

		// return an empty array when there are no visible testimonials
		if(empty($allIds)) return array();

		// return the testimonial with a random ID
		return self::get($allIds[array_rand($allIds)]);
	}
}
