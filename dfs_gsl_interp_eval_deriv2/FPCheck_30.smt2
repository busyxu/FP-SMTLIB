(declare-fun xx_ack!249 () (_ BitVec 64))
(declare-fun x0_ack!250 () (_ BitVec 64))
(declare-fun x1_ack!247 () (_ BitVec 64))
(declare-fun x2_ack!248 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!249) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!249) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!249) ((_ to_fp 11 53) x0_ack!250))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!249) ((_ to_fp 11 53) x1_ack!247)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!247) ((_ to_fp 11 53) xx_ack!249))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!248)
               ((_ to_fp 11 53) x1_ack!247))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!248)
                  ((_ to_fp 11 53) x1_ack!247)))))

(check-sat)
(exit)
