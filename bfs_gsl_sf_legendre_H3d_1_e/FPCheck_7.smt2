(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun a_ack!18 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!18)
          ((_ to_fp 11 53) a_ack!18))
  #x3ff0000000000000))

(check-sat)
(exit)
