(declare-fun a_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!24))
            ((_ to_fp 11 53) #x3fe999999999999a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!24)) ((_ to_fp 11 53) #x4059000000000000)))
(assert (let ((a!1 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.abs ((_ to_fp 11 53) a_ack!24))))))
  (FPCHECK_FDIV_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x400921fb54442d18)
            (fp.abs ((_ to_fp 11 53) a_ack!24))))))

(check-sat)
(exit)
