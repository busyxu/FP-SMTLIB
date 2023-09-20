(declare-fun a_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3e68000000000000)))
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
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!25)
                                   ((_ to_fp 11 53) a_ack!25))
                           ((_ to_fp 11 53) a_ack!25))
                   ((_ to_fp 11 53) a_ack!25))))
  (FPCHECK_FDIV_OVERFLOW a!1 #x4010000000000000)))

(check-sat)
(exit)
