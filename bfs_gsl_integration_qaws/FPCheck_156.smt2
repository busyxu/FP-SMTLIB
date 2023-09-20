(declare-fun alpha1_ack!1212 () (_ BitVec 64))
(declare-fun beta_ack!1213 () (_ BitVec 64))
(declare-fun mu_ack!1214 () (_ BitVec 32))
(declare-fun nu_ack!1215 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!1212)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!1213)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!1214))
(assert (= #x00000000 nu_ack!1215))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x401c000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!1212)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
