(declare-fun p_ack!151 () (_ BitVec 64))
(declare-fun k_ack!149 () (_ BitVec 32))
(declare-fun n_ack!150 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!151) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!151) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!150 k_ack!149)))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!151) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!151) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!151) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!151) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!150)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!150)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!150)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!150)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!150)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149)))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!150)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!149)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!150)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!149))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!150)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!149)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!149)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!149)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_ACCURACY
    #x4000a72bcde822b8
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #xbff007228b4cd147))
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ffbc8a35d2b114e))))))

(check-sat)
(exit)
