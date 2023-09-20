(declare-fun xx_ack!700 () (_ BitVec 64))
(declare-fun x0_ack!701 () (_ BitVec 64))
(declare-fun x1_ack!699 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!700) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!700) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!700) ((_ to_fp 11 53) x0_ack!701))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!700) ((_ to_fp 11 53) x1_ack!699))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!699)
               ((_ to_fp 11 53) x0_ack!701))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!699)
          ((_ to_fp 11 53) x0_ack!701))))

(check-sat)
(exit)
