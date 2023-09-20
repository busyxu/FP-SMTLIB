(declare-fun alpha1_ack!4849 () (_ BitVec 64))
(declare-fun beta_ack!4850 () (_ BitVec 64))
(declare-fun mu_ack!4851 () (_ BitVec 32))
(declare-fun nu_ack!4852 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!4849)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!4850)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!4851))
(assert (not (= #x00000000 nu_ack!4852)))
(assert (= #x00000001 nu_ack!4852))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x4010000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!4849)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
