(declare-fun mu_ack!631 () (_ BitVec 64))
(declare-fun x_ack!632 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!631) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!632)
                    ((_ to_fp 11 53) x_ack!632))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!631)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!632)
                    ((_ to_fp 11 53) x_ack!632))
            ((_ to_fp 11 53) mu_ack!631))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!632))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!632)
                       ((_ to_fp 11 53) x_ack!632))
               ((_ to_fp 11 53) x_ack!632))
       ((_ to_fp 11 53) x_ack!632)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!632))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!632)
                       ((_ to_fp 11 53) x_ack!632))
               ((_ to_fp 11 53) x_ack!632))
       ((_ to_fp 11 53) x_ack!632)))
(assert (FPCHECK_FDIV_ACCURACY
  mu_ack!631
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!632)
          ((_ to_fp 11 53) x_ack!632))))

(check-sat)
(exit)
