(declare-fun b_ack!157 () (_ BitVec 32))
(declare-fun a_ack!158 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!157 #x00000000)))
(assert (not (bvslt a_ack!158 b_ack!157)))
(assert (not (= #x00000000 b_ack!157)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!158 b_ack!157))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!158 b_ack!157))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!158))
  #x3ff0000000000000))

(check-sat)
(exit)
