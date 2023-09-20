(declare-fun xx_ack!204 () (_ BitVec 64))
(declare-fun x0_ack!205 () (_ BitVec 64))
(declare-fun x1_ack!202 () (_ BitVec 64))
(declare-fun x2_ack!203 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!204) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!204) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!204) ((_ to_fp 11 53) x0_ack!205))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!204) ((_ to_fp 11 53) x1_ack!202)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!202) ((_ to_fp 11 53) xx_ack!204))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!203)
               ((_ to_fp 11 53) x1_ack!202))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!203)
                  ((_ to_fp 11 53) x1_ack!202))
          ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
  #x4008000000000000))

(check-sat)
(exit)
