(declare-fun a_ack!105 () (_ BitVec 32))
(declare-fun b_ack!104 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!105 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!104) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!105 a_ack!105))))

(check-sat)
(exit)
