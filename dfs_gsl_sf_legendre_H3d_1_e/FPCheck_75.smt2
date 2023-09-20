(declare-fun b_ack!307 () (_ BitVec 64))
(declare-fun a_ack!308 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!307) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!307) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!308) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!307)
                       ((_ to_fp 11 53) a_ack!308)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!307) ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!307)
                                   ((_ to_fp 11 53) a_ack!308)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!307)
                                   ((_ to_fp 11 53) a_ack!308))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4014000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!307)
                    ((_ to_fp 11 53) b_ack!307)))
    a!1)))

(check-sat)
(exit)
