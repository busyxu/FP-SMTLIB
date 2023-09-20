(declare-fun a_ack!432 () (_ BitVec 32))
(declare-fun b_ack!431 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!432 #x00000000)))
(assert (not (bvslt b_ack!431 #x00000000)))
(assert (not (= #x00000000 a_ack!432)))
(assert (not (= #x00000001 a_ack!432)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!431 a_ack!432)) #x00000001)))
(assert (bvsle (bvadd #x00000001 (bvsub b_ack!431 a_ack!432)) b_ack!431))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvsub b_ack!431 a_ack!432)))))

(check-sat)
(exit)
