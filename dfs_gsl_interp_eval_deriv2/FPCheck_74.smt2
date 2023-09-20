(declare-fun xx_ack!517 () (_ BitVec 64))
(declare-fun x0_ack!518 () (_ BitVec 64))
(declare-fun x1_ack!516 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!517) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!517) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!517) ((_ to_fp 11 53) x0_ack!518)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!516)
               ((_ to_fp 11 53) x0_ack!518))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!517)
                       ((_ to_fp 11 53) x0_ack!518))
               ((_ to_fp 11 53) x0_ack!518))
       ((_ to_fp 11 53) xx_ack!517)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!517)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!517)
                       ((_ to_fp 11 53) x0_ack!518)))
       ((_ to_fp 11 53) x0_ack!518)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!516)
                                   ((_ to_fp 11 53) x0_ack!518))))))
  (FPCHECK_FMUL_ACCURACY #x4018000000000000 a!1)))

(check-sat)
(exit)
