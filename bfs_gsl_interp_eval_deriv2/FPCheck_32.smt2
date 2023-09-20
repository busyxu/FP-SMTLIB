(declare-fun xx_ack!266 () (_ BitVec 64))
(declare-fun x0_ack!267 () (_ BitVec 64))
(declare-fun x1_ack!264 () (_ BitVec 64))
(declare-fun x2_ack!265 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!266) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!266) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!266) ((_ to_fp 11 53) x0_ack!267))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!266) ((_ to_fp 11 53) x1_ack!264)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!264) ((_ to_fp 11 53) xx_ack!266))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!265)
               ((_ to_fp 11 53) x1_ack!264))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!265)
                  ((_ to_fp 11 53) x1_ack!264)))))

(check-sat)
(exit)
