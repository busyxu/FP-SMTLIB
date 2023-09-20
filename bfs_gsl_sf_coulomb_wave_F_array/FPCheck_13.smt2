(declare-fun d_ack!64 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!63 () (_ BitVec 32))
(declare-fun a_ack!65 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!65)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!63))
  #x0000000000000000))

(check-sat)
(exit)
