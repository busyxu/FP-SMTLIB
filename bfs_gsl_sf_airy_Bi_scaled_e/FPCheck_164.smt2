(declare-fun a_ack!452 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!452) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!452) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!452)
                                   ((_ to_fp 11 53) a_ack!452))
                           ((_ to_fp 11 53) a_ack!452)))))
  (FPCHECK_FSUB_UNDERFLOW a!1 #x4022000000000000)))

(check-sat)
(exit)
