(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!16))
        ((_ to_fp 11 53) #x3fd8000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4060000000000000)
                  ((_ to_fp 11 53) a_ack!16))
          ((_ to_fp 11 53) a_ack!16))
  #x4022000000000000))

(check-sat)
(exit)
