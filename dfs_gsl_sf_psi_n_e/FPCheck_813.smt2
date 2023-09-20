(declare-fun a_ack!2201 () (_ BitVec 32))
(declare-fun b_ack!2200 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (= #x00000000 a_ack!2201)))
(assert (not (= #x00000001 a_ack!2201)))
(assert (not (bvslt a_ack!2201 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2201)
  #x3ff0000000000000))

(check-sat)
(exit)
