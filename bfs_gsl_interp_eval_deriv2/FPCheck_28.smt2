(declare-fun xx_ack!238 () (_ BitVec 64))
(declare-fun x0_ack!239 () (_ BitVec 64))
(declare-fun x1_ack!234 () (_ BitVec 64))
(declare-fun x2_ack!235 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!236 () (_ BitVec 64))
(declare-fun y2_ack!237 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!238) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!238) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!238) ((_ to_fp 11 53) x0_ack!239))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!238) ((_ to_fp 11 53) x1_ack!234)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!234) ((_ to_fp 11 53) xx_ack!238))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!235)
               ((_ to_fp 11 53) x1_ack!234))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!235)
                                   ((_ to_fp 11 53) x1_ack!234))
                           ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!237)
                    ((_ to_fp 11 53) y1_ack!236))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!235)
                    ((_ to_fp 11 53) x1_ack!234)))
    a!1)))

(check-sat)
(exit)
