(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!53 () (_ BitVec 64))
(declare-fun a_ack!54 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!54))
                           ((_ to_fp 11 53) a_ack!54))
                   ((_ to_fp 11 53) a_ack!54))))
  (FPCHECK_FSUB_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4022000000000000)
                    ((_ to_fp 11 53) a_ack!54))
            ((_ to_fp 11 53) b_ack!53)))))

(check-sat)
(exit)
