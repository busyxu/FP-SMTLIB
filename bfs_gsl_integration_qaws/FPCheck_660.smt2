(declare-fun alpha1_ack!5177 () (_ BitVec 64))
(declare-fun beta_ack!5178 () (_ BitVec 64))
(declare-fun mu_ack!5179 () (_ BitVec 32))
(declare-fun nu_ack!5180 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!5177)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!5178)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!5179))
(assert (not (= #x00000000 nu_ack!5180)))
(assert (= #x00000001 nu_ack!5180))
(assert (FPCHECK_FADD_UNDERFLOW
  #x4014000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) alpha1_ack!5177)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
