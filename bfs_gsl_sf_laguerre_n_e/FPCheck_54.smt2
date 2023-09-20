(declare-fun a_ack!281 () (_ BitVec 32))
(declare-fun c_ack!280 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!279 () (_ BitVec 64))
(assert (not (bvslt a_ack!281 #x00000000)))
(assert (not (= #x00000000 a_ack!281)))
(assert (not (= #x00000001 a_ack!281)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!280) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!281))
(assert (bvsle #x00000003 a_ack!281))
(assert (bvsle #x00000004 a_ack!281))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!279)
          ((_ to_fp 11 53) #x4010000000000000))
  #x4010000000000000))

(check-sat)
(exit)
