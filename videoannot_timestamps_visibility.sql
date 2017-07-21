DROP TABLE
IF EXISTS t_videoannot_timestamps_sxx_visibility;

CREATE TABLE t_videoannot_timestamps_sxx_visibility AS SELECT
	s01_time.subid,
	s01_time.round_txt,
	s01_time.distance :: NUMERIC,
	s01_time.s01_timestamp AS s01_timestamp,
	s02_time.s02_timestamp AS s02_timestamp,
	s03_time.s03_timestamp AS s03_timestamp,
	s04_time.s04_timestamp AS s04_timestamp,
	s05_time.s05_timestamp AS s05_timestamp,
	s06_time.s06_timestamp AS s06_timestamp,
	s07_time.s07_timestamp AS s07_timestamp,
	s08_time.s08_timestamp AS s08_timestamp,
	s09_time.s09_timestamp AS s09_timestamp,
	s10_time.s10_timestamp AS s10_timestamp,
	s11_time.s11_timestamp AS s11_timestamp,
	s12_time.s12_timestamp AS s12_timestamp,
	s13_time.s13_timestamp AS s13_timestamp,
	s14_time.s14_timestamp AS s14_timestamp,
	s15_time.s15_timestamp AS s15_timestamp,
	s16_time.s16_timestamp AS s16_timestamp,
	s17_time.s17_timestamp AS s17_timestamp,
	s18_time.s18_timestamp AS s18_timestamp
FROM
	(
		SELECT
			subid,
			round_txt,
			'-50' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s01_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 50
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-45' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s01_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 45
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-40' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s01_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 40
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-35' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s01_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 35
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-30' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s01_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 30
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-25' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s01_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 25
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-20' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s01_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 20
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-15' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s01_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 15
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-10' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s01_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 10
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'-5' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s01_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = - 5
											GROUP BY
												subid,
												round_txt
											UNION
												SELECT
													subid,
													round_txt,
													'0' AS distance,
													MIN (
														to_char(
															(
																to_timestamp(
																	(
																		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																	) :: DOUBLE PRECISION
																) - (
																	'01:00:00.000' :: TIME WITHOUT TIME ZONE
																) :: INTERVAL
															),
															'HH24:MI:SS.MS' :: TEXT
														)
													) AS s01_timestamp
												FROM
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
												WHERE
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0 = 0
												GROUP BY
													subid,
													round_txt
	) s01_time
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s02_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s02_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s02_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s02_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s02_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s02_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s02_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s02_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s02_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s02_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s02_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s02_time ON s02_time.distance = s01_time.distance
AND s02_time.subid = s01_time.subid
AND s02_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s03_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s03_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s03_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s03_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s03_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s03_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s03_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s03_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s03_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s03_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s03_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s03_time ON s03_time.distance = s01_time.distance
AND s03_time.subid = s01_time.subid
AND s03_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s04_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s04_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s04_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s04_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s04_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s04_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s04_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s04_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s04_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s04_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s04_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s04_time ON s04_time.distance = s01_time.distance
AND s04_time.subid = s01_time.subid
AND s04_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s05_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s05_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s05_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s05_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s05_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s05_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s05_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s05_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s05_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s05_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s05_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s05_time ON s05_time.distance = s01_time.distance
AND s05_time.subid = s01_time.subid
AND s05_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s06_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s06_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s06_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s06_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s06_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s06_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s06_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s06_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s06_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s06_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s06_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s06_time ON s06_time.distance = s01_time.distance
AND s06_time.subid = s01_time.subid
AND s06_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s07_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s07_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s07_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s07_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s07_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s07_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s07_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s07_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s07_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s07_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s07_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s07_time ON s07_time.distance = s01_time.distance
AND s07_time.subid = s01_time.subid
AND s07_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s08_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s08_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s08_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s08_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s08_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s08_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s08_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s08_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s08_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s08_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s08_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s08_time ON s08_time.distance = s01_time.distance
AND s08_time.subid = s01_time.subid
AND s08_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s09_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s09_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s09_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s09_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s09_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s09_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s09_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s09_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s09_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s09_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s09_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s09_time ON s09_time.distance = s01_time.distance
AND s09_time.subid = s01_time.subid
AND s09_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s10_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s10_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s10_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s10_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s10_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s10_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s10_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s10_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s10_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s10_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s10_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s10_time ON s10_time.distance = s01_time.distance
AND s10_time.subid = s01_time.subid
AND s10_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s11_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s11_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s11_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s11_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s11_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s11_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s11_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s11_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s11_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s11_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s11_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s11_time ON s11_time.distance = s01_time.distance
AND s11_time.subid = s01_time.subid
AND s11_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s12_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s12_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s12_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s12_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s12_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s12_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s12_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s12_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s12_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s12_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s12_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s12_time ON s12_time.distance = s01_time.distance
AND s12_time.subid = s01_time.subid
AND s12_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s13_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s13_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s13_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s13_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s13_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s13_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s13_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s13_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s13_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s13_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s13_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s13_time ON s13_time.distance = s01_time.distance
AND s13_time.subid = s01_time.subid
AND s13_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s14_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s14_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s14_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s14_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s14_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s14_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s14_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s14_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s14_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s14_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s14_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s14_time ON s14_time.distance = s01_time.distance
AND s14_time.subid = s01_time.subid
AND s14_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s15_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s15_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s15_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s15_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s15_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s15_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s15_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s15_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s15_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s15_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s15_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s15_time ON s15_time.distance = s01_time.distance
AND s15_time.subid = s01_time.subid
AND s15_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s16_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s16_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s16_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s16_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s16_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s16_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s16_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s16_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s16_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s16_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s16_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s16_time ON s16_time.distance = s01_time.distance
AND s16_time.subid = s01_time.subid
AND s16_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s17_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s17_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s17_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s17_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s17_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s17_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s17_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s17_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s17_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s17_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s17_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s17_time ON s17_time.distance = s01_time.distance
AND s17_time.subid = s01_time.subid
AND s17_time.round_txt = s01_time.round_txt
LEFT OUTER JOIN (
	SELECT
		subid,
		round_txt,
		'-50' AS distance,
		MIN (
			to_char(
				(
					to_timestamp(
						(
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
						) :: DOUBLE PRECISION
					) - (
						'01:00:00.000' :: TIME WITHOUT TIME ZONE
					) :: INTERVAL
				),
				'HH24:MI:SS.MS' :: TEXT
			)
		) AS s18_timestamp
	FROM
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
	WHERE
		t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 50
	GROUP BY
		subid,
		round_txt
	UNION
		SELECT
			subid,
			round_txt,
			'-45' AS distance,
			MIN (
				to_char(
					(
						to_timestamp(
							(
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
							) :: DOUBLE PRECISION
						) - (
							'01:00:00.000' :: TIME WITHOUT TIME ZONE
						) :: INTERVAL
					),
					'HH24:MI:SS.MS' :: TEXT
				)
			) AS s18_timestamp
		FROM
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
		WHERE
			t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 45
		GROUP BY
			subid,
			round_txt
		UNION
			SELECT
				subid,
				round_txt,
				'-40' AS distance,
				MIN (
					to_char(
						(
							to_timestamp(
								(
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
								) :: DOUBLE PRECISION
							) - (
								'01:00:00.000' :: TIME WITHOUT TIME ZONE
							) :: INTERVAL
						),
						'HH24:MI:SS.MS' :: TEXT
					)
				) AS s18_timestamp
			FROM
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
			WHERE
				t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 40
			GROUP BY
				subid,
				round_txt
			UNION
				SELECT
					subid,
					round_txt,
					'-35' AS distance,
					MIN (
						to_char(
							(
								to_timestamp(
									(
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
									) :: DOUBLE PRECISION
								) - (
									'01:00:00.000' :: TIME WITHOUT TIME ZONE
								) :: INTERVAL
							),
							'HH24:MI:SS.MS' :: TEXT
						)
					) AS s18_timestamp
				FROM
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
				WHERE
					t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 35
				GROUP BY
					subid,
					round_txt
				UNION
					SELECT
						subid,
						round_txt,
						'-30' AS distance,
						MIN (
							to_char(
								(
									to_timestamp(
										(
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
										) :: DOUBLE PRECISION
									) - (
										'01:00:00.000' :: TIME WITHOUT TIME ZONE
									) :: INTERVAL
								),
								'HH24:MI:SS.MS' :: TEXT
							)
						) AS s18_timestamp
					FROM
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
					WHERE
						t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 30
					GROUP BY
						subid,
						round_txt
					UNION
						SELECT
							subid,
							round_txt,
							'-25' AS distance,
							MIN (
								to_char(
									(
										to_timestamp(
											(
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
											) :: DOUBLE PRECISION
										) - (
											'01:00:00.000' :: TIME WITHOUT TIME ZONE
										) :: INTERVAL
									),
									'HH24:MI:SS.MS' :: TEXT
								)
							) AS s18_timestamp
						FROM
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
						WHERE
							t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 25
						GROUP BY
							subid,
							round_txt
						UNION
							SELECT
								subid,
								round_txt,
								'-20' AS distance,
								MIN (
									to_char(
										(
											to_timestamp(
												(
													t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
												) :: DOUBLE PRECISION
											) - (
												'01:00:00.000' :: TIME WITHOUT TIME ZONE
											) :: INTERVAL
										),
										'HH24:MI:SS.MS' :: TEXT
									)
								) AS s18_timestamp
							FROM
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
							WHERE
								t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 20
							GROUP BY
								subid,
								round_txt
							UNION
								SELECT
									subid,
									round_txt,
									'-15' AS distance,
									MIN (
										to_char(
											(
												to_timestamp(
													(
														t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
													) :: DOUBLE PRECISION
												) - (
													'01:00:00.000' :: TIME WITHOUT TIME ZONE
												) :: INTERVAL
											),
											'HH24:MI:SS.MS' :: TEXT
										)
									) AS s18_timestamp
								FROM
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
								WHERE
									t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 15
								GROUP BY
									subid,
									round_txt
								UNION
									SELECT
										subid,
										round_txt,
										'-10' AS distance,
										MIN (
											to_char(
												(
													to_timestamp(
														(
															t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
														) :: DOUBLE PRECISION
													) - (
														'01:00:00.000' :: TIME WITHOUT TIME ZONE
													) :: INTERVAL
												),
												'HH24:MI:SS.MS' :: TEXT
											)
										) AS s18_timestamp
									FROM
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
									WHERE
										t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 10
									GROUP BY
										subid,
										round_txt
									UNION
										SELECT
											subid,
											round_txt,
											'-5' AS distance,
											MIN (
												to_char(
													(
														to_timestamp(
															(
																t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
															) :: DOUBLE PRECISION
														) - (
															'01:00:00.000' :: TIME WITHOUT TIME ZONE
														) :: INTERVAL
													),
													'HH24:MI:SS.MS' :: TEXT
												)
											) AS s18_timestamp
										FROM
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
										WHERE
											t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = - 5
										GROUP BY
											subid,
											round_txt
										UNION
											SELECT
												subid,
												round_txt,
												'0' AS distance,
												MIN (
													to_char(
														(
															to_timestamp(
																(
																	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s
																) :: DOUBLE PRECISION
															) - (
																'01:00:00.000' :: TIME WITHOUT TIME ZONE
															) :: INTERVAL
														),
														'HH24:MI:SS.MS' :: TEXT
													)
												) AS s18_timestamp
											FROM
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2
											WHERE
												t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = 0
											GROUP BY
												subid,
												round_txt
) s18_time ON s18_time.distance = s01_time.distance
AND s18_time.subid = s01_time.subid
AND s18_time.round_txt = s01_time.round_txt

ORDER BY 
subid, round_txt, distance