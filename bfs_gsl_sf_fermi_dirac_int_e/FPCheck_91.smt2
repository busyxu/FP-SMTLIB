(declare-fun a_ack!285 () (_ BitVec 32))
(declare-fun b_ack!284 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!285 #xffffffff)))
(assert (= #xffffffff a_ack!285))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!284) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!284)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
