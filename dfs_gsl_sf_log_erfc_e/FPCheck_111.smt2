(declare-fun a_ack!144 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!144)
                    ((_ to_fp 11 53) a_ack!144))
            ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!144) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!144))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!144))
        ((_ to_fp 11 53) #x4014000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!144))
          ((_ to_fp 11 53) #x4008000000000000))))

(check-sat)
(exit)
