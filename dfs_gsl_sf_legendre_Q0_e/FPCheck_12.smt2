(declare-fun a_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!25)
                    ((_ to_fp 11 53) a_ack!25))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!25)
               ((_ to_fp 11 53) #x0010000000000000))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!25))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!25)
                       ((_ to_fp 11 53) a_ack!25))
               ((_ to_fp 11 53) a_ack!25))
       ((_ to_fp 11 53) a_ack!25)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!25))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!25)
                       ((_ to_fp 11 53) a_ack!25))
               ((_ to_fp 11 53) a_ack!25))
       ((_ to_fp 11 53) a_ack!25)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!25)
          ((_ to_fp 11 53) a_ack!25))))

(check-sat)
(exit)
