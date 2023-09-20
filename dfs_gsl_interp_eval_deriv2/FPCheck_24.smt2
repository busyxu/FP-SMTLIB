(declare-fun xx_ack!205 () (_ BitVec 64))
(declare-fun x0_ack!206 () (_ BitVec 64))
(declare-fun x1_ack!201 () (_ BitVec 64))
(declare-fun x2_ack!202 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!203 () (_ BitVec 64))
(declare-fun y2_ack!204 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!205) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!205) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!205) ((_ to_fp 11 53) x0_ack!206))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!205) ((_ to_fp 11 53) x1_ack!201)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!201) ((_ to_fp 11 53) xx_ack!205))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!202)
               ((_ to_fp 11 53) x1_ack!201))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!202)
                                   ((_ to_fp 11 53) x1_ack!201))
                           ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!204)
                    ((_ to_fp 11 53) y1_ack!203))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!202)
                    ((_ to_fp 11 53) x1_ack!201)))
    a!1)))

(check-sat)
(exit)
