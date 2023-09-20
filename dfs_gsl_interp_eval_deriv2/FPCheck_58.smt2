(declare-fun xx_ack!432 () (_ BitVec 64))
(declare-fun x0_ack!433 () (_ BitVec 64))
(declare-fun x1_ack!431 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!432) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!432) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!432) ((_ to_fp 11 53) x0_ack!433)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!431)
               ((_ to_fp 11 53) x0_ack!433))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!432)
                       ((_ to_fp 11 53) x0_ack!433))
               ((_ to_fp 11 53) x0_ack!433))
       ((_ to_fp 11 53) xx_ack!432)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!432)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!432)
                       ((_ to_fp 11 53) x0_ack!433)))
       ((_ to_fp 11 53) x0_ack!433)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!431)
          ((_ to_fp 11 53) x0_ack!433))
  #xabc4c0c0c0c0c0c0))

(check-sat)
(exit)
