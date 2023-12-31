(declare-fun a_ack!63 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!63) ((_ to_fp 11 53) #x3ee4519884312501))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!63) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!63) ((_ to_fp 11 53) #x400a6d14485c38d5)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          ((_ to_fp 11 53) a_ack!63))
  a_ack!63))

(check-sat)
(exit)
