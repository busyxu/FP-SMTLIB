(declare-fun xx_ack!221 () (_ BitVec 64))
(declare-fun x0_ack!222 () (_ BitVec 64))
(declare-fun x1_ack!219 () (_ BitVec 64))
(declare-fun x2_ack!220 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!221) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!221) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!221) ((_ to_fp 11 53) x0_ack!222))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!221) ((_ to_fp 11 53) x1_ack!219)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!219) ((_ to_fp 11 53) xx_ack!221))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!220)
               ((_ to_fp 11 53) x1_ack!219))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!220)
          ((_ to_fp 11 53) x1_ack!219))))

(check-sat)
(exit)
