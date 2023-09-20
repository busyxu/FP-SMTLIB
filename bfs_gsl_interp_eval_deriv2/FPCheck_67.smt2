(declare-fun xx_ack!486 () (_ BitVec 64))
(declare-fun x0_ack!487 () (_ BitVec 64))
(declare-fun x1_ack!485 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!486) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!486) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!486) ((_ to_fp 11 53) x0_ack!487))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!486) ((_ to_fp 11 53) x1_ack!485))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!485)
               ((_ to_fp 11 53) x0_ack!487))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!485)
          ((_ to_fp 11 53) x0_ack!487))))

(check-sat)
(exit)
