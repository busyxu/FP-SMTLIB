(declare-fun xx_ack!184 () (_ BitVec 64))
(declare-fun x0_ack!185 () (_ BitVec 64))
(declare-fun x1_ack!182 () (_ BitVec 64))
(declare-fun x2_ack!183 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!184) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!184) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!184) ((_ to_fp 11 53) x0_ack!185))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!184) ((_ to_fp 11 53) x1_ack!182)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!182) ((_ to_fp 11 53) xx_ack!184))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!183)
               ((_ to_fp 11 53) x1_ack!182))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!183)
          ((_ to_fp 11 53) x1_ack!182))
  #xabc4c0c0c0c0c0c0))

(check-sat)
(exit)
