(declare-fun a_ack!742 () (_ BitVec 32))
(declare-fun b_ack!741 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!742 #xffffffff)))
(assert (not (= #xffffffff a_ack!742)))
(assert (not (= #x00000000 a_ack!742)))
(assert (not (= #x00000001 a_ack!742)))
(assert (= #x00000002 a_ack!742))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!741) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!741) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!741) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!741) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe5555555555555
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!741)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
