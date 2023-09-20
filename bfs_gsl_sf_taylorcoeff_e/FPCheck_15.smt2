(declare-fun b_ack!55 () (_ BitVec 64))
(declare-fun a_ack!56 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!56 #x00000000)))
(assert (not (= #x00000000 a_ack!56)))
(assert (not (= #x00000001 a_ack!56)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!56)
  #x3ff0000000000000))

(check-sat)
(exit)
