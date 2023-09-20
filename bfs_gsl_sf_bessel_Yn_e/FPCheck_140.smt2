(declare-fun a_ack!505 () (_ BitVec 32))
(declare-fun b_ack!504 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!505 #x00000000)))
(assert (not (= #x00000000 a_ack!505)))
(assert (not (= #x00000001 a_ack!505)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!504) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!504) ((_ to_fp 11 53) #x4014000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!505 a_ack!505))
  #x3ff0000000000000))

(check-sat)
(exit)
