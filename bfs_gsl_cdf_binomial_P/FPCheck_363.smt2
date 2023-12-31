(declare-fun p_ack!1498 () (_ BitVec 64))
(declare-fun k_ack!1496 () (_ BitVec 32))
(declare-fun n_ack!1497 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!1498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!1498) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!1497 k_ack!1496)))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!1498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!1498) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!1498) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!1498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1496)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!1497)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1496))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1496)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!1497)
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!1496))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!1496)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!1497)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!1496))))))
  (fp.lt ((_ to_fp 11 53) p_ack!1498) a!1)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1496)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4000000000000000))

(check-sat)
(exit)
