(declare-fun a_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!10) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!10)) ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (FPCHECK_FMUL_UNDERFLOW
  a_ack!10
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fbc71c71c71c71c)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!10)
                  ((_ to_fp 11 53) #xbfb999999999999a)))))

(check-sat)
(exit)
