(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun a_ack!25 () (_ BitVec 64))
(declare-fun b_ack!24 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!24)
          ((_ to_fp 11 53) a_ack!25))
  #x3fe0000000000000))

(check-sat)
(exit)
