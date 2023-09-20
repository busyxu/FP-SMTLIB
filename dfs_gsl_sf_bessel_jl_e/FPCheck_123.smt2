(declare-fun a_ack!463 () (_ BitVec 32))
(declare-fun b_ack!462 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!463 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!463)))
(assert (not (= #x00000001 a_ack!463)))
(assert (not (= #x00000002 a_ack!463)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!463)
                  ((_ to_fp 11 53) #x3fe0000000000000)))
  #x4005bf0a8b145769))

(check-sat)
(exit)
