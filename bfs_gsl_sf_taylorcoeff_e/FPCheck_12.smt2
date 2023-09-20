(declare-fun b_ack!49 () (_ BitVec 64))
(declare-fun a_ack!50 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!50 #x00000000)))
(assert (not (= #x00000000 a_ack!50)))
(assert (not (= #x00000001 a_ack!50)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!50)
  #x3fe0000000000000))

(check-sat)
(exit)
