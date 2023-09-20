(declare-fun xx_ack!175 () (_ BitVec 64))
(declare-fun x0_ack!176 () (_ BitVec 64))
(declare-fun x1_ack!173 () (_ BitVec 64))
(declare-fun x2_ack!174 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!175) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!175) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!175) ((_ to_fp 11 53) x0_ack!176))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!175) ((_ to_fp 11 53) x1_ack!173)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!173) ((_ to_fp 11 53) xx_ack!175))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!174)
               ((_ to_fp 11 53) x1_ack!173))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!174)
                  ((_ to_fp 11 53) x1_ack!173))
          ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
  #x4008000000000000))

(check-sat)
(exit)
