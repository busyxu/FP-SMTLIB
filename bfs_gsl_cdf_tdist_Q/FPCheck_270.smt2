(declare-fun mu_ack!683 () (_ BitVec 64))
(declare-fun x_ack!684 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!683) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!684)
                    ((_ to_fp 11 53) x_ack!684))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!683)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!684)
                    ((_ to_fp 11 53) x_ack!684))
            ((_ to_fp 11 53) mu_ack!683))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!684))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!684)
                       ((_ to_fp 11 53) x_ack!684))
               ((_ to_fp 11 53) x_ack!684))
       ((_ to_fp 11 53) x_ack!684)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!684))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!684)
                       ((_ to_fp 11 53) x_ack!684))
               ((_ to_fp 11 53) x_ack!684))
       ((_ to_fp 11 53) x_ack!684)))
(assert (FPCHECK_FDIV_ZERO
  mu_ack!683
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!684)
          ((_ to_fp 11 53) x_ack!684))))

(check-sat)
(exit)
