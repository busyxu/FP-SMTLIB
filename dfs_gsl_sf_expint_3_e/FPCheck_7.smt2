(declare-fun a_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x3ee4519884312501))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x400a6d14485c38d5)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4030000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!13)
                  ((_ to_fp 11 53) a_ack!13))
          ((_ to_fp 11 53) a_ack!13))))

(check-sat)
(exit)
