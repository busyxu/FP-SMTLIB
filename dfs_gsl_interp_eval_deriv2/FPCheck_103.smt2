(declare-fun xx_ack!706 () (_ BitVec 64))
(declare-fun x0_ack!707 () (_ BitVec 64))
(declare-fun x1_ack!705 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!706) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!706) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!706) ((_ to_fp 11 53) x0_ack!707))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!706) ((_ to_fp 11 53) x1_ack!705))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!705)
               ((_ to_fp 11 53) x0_ack!707))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!705)
          ((_ to_fp 11 53) x0_ack!707))))

(check-sat)
(exit)
