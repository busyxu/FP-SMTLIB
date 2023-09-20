(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20))
            ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20)) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4020000000000000)
                  ((_ to_fp 11 53) a_ack!20))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
