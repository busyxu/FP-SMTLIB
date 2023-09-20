(declare-fun a_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x3ee4519884312501))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!13)
                  ((_ to_fp 11 53) a_ack!13))
          ((_ to_fp 11 53) a_ack!13))
  #x4010000000000000))

(check-sat)
(exit)
