(declare-fun a_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!10))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!10))
            ((_ to_fp 11 53) #x3e40000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!10))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!10)
                  ((_ to_fp 11 53) a_ack!10))
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
