(declare-fun xx_ack!196 () (_ BitVec 64))
(declare-fun x0_ack!197 () (_ BitVec 64))
(declare-fun x1_ack!194 () (_ BitVec 64))
(declare-fun x2_ack!195 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!196) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!196) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!196) ((_ to_fp 11 53) x0_ack!197))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!196) ((_ to_fp 11 53) x1_ack!194)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!194) ((_ to_fp 11 53) xx_ack!196))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!195)
               ((_ to_fp 11 53) x1_ack!194))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!195)
                  ((_ to_fp 11 53) x1_ack!194))
          ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
  #x4008000000000000))

(check-sat)
(exit)
