(declare-fun p_ack!3874 () (_ BitVec 64))
(declare-fun n_ack!3873 () (_ BitVec 32))
(declare-fun k_ack!3872 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!3874) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!3874) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!3874) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!3874) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!3874) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!3874) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3872)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!3872)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!3873)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!3872)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt ((_ to_fp 11 53) p_ack!3874) a!1))))
(assert (not (fp.eq ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3872)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3872)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3872)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3872)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
       (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3872)
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3873)
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3872)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
