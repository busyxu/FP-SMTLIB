(declare-fun alpha1_ack!2746 () (_ BitVec 64))
(declare-fun beta_ack!2747 () (_ BitVec 64))
(declare-fun mu_ack!2748 () (_ BitVec 32))
(declare-fun nu_ack!2749 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2746)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2747)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2748)))
(assert (= #x00000001 mu_ack!2748))
(assert (= #x00000000 nu_ack!2749))
(assert (FPCHECK_FADD_UNDERFLOW
  #x4008000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!2746)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
