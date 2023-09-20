(declare-fun p_ack!2080 () (_ BitVec 64))
(declare-fun k_ack!2078 () (_ BitVec 32))
(declare-fun n_ack!2079 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!2080) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!2080) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!2079 k_ack!2078)))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!2080) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!2080) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!2080) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!2080) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2078)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2079)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2078))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2078)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!2079)
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!2078))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!2078)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2079)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!2078))))))
  (fp.lt ((_ to_fp 11 53) p_ack!2080) a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!2078)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2079)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!2078))
                           a!1))))
  (FPCHECK_FMUL_OVERFLOW a!2 #xb7f0000040000000))))

(check-sat)
(exit)
