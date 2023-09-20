(declare-fun d_ack!70 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!69 () (_ BitVec 32))
(declare-fun a_ack!71 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!70) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!71)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!69))
  #x0000000000000000))

(check-sat)
(exit)
