(declare-fun b_ack!149 () (_ BitVec 32))
(declare-fun a_ack!150 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!149 #x00000000)))
(assert (not (bvslt a_ack!150 b_ack!149)))
(assert (not (= #x00000000 b_ack!149)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!150 b_ack!149))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!150 b_ack!149))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!150)))

(check-sat)
(exit)
