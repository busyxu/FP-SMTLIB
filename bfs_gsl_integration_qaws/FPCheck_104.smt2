(declare-fun alpha1_ack!804 () (_ BitVec 64))
(declare-fun beta_ack!805 () (_ BitVec 64))
(declare-fun mu_ack!806 () (_ BitVec 32))
(declare-fun nu_ack!807 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!804)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!805) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!806))
(assert (= #x00000000 nu_ack!807))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x4014000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!804)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
