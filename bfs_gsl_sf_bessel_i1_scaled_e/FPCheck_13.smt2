(declare-fun a_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!19))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!19))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!19))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!19))
                           (fp.abs ((_ to_fp 11 53) a_ack!19)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4000000000000000
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
