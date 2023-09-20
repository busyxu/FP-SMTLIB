(declare-fun xx_ack!163 () (_ BitVec 64))
(declare-fun x0_ack!164 () (_ BitVec 64))
(declare-fun x1_ack!161 () (_ BitVec 64))
(declare-fun x2_ack!162 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!163) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!163) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!163) ((_ to_fp 11 53) x0_ack!164))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!163) ((_ to_fp 11 53) x1_ack!161)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!161) ((_ to_fp 11 53) xx_ack!163))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!162)
               ((_ to_fp 11 53) x1_ack!161))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!162)
          ((_ to_fp 11 53) x1_ack!161))
  #xabc4c0c0c0c0c0c0))

(check-sat)
(exit)
