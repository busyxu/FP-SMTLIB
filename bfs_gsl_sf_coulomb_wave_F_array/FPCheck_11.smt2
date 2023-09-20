(declare-fun d_ack!54 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!53 () (_ BitVec 32))
(declare-fun a_ack!55 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  a_ack!55
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!53)))

(check-sat)
(exit)
