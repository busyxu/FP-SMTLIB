(declare-fun b_ack!71 () (_ BitVec 64))
(declare-fun a_ack!72 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!71) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!71) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!72) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!71)
                       ((_ to_fp 11 53) a_ack!72)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!71) ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!71)
                       ((_ to_fp 11 53) a_ack!72)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!71)
                                   ((_ to_fp 11 53) a_ack!72)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!71)
                                   ((_ to_fp 11 53) a_ack!72))))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x4018000000000000)))

(check-sat)
(exit)
