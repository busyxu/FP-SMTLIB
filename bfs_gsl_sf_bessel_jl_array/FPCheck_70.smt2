(declare-fun a_ack!285 () (_ BitVec 32))
(declare-fun b_ack!284 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!285 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!285) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!285)))
(assert (not (= #x00000000 a_ack!285)))
(assert (not (= #x00000001 a_ack!285)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!285))
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
