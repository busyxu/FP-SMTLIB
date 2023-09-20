(declare-fun xx_ack!682 () (_ BitVec 64))
(declare-fun x0_ack!683 () (_ BitVec 64))
(declare-fun x1_ack!679 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!680 () (_ BitVec 64))
(declare-fun y1_ack!681 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!682) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!682) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!682) ((_ to_fp 11 53) x0_ack!683)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!679)
               ((_ to_fp 11 53) x0_ack!683))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!682)
                       ((_ to_fp 11 53) x0_ack!683))
               ((_ to_fp 11 53) x0_ack!683))
       ((_ to_fp 11 53) xx_ack!682)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!682)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!682)
                       ((_ to_fp 11 53) x0_ack!683)))
       ((_ to_fp 11 53) x0_ack!683)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!679)
                                   ((_ to_fp 11 53) x0_ack!683))
                           ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!681)
                    ((_ to_fp 11 53) y0_ack!680))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!679)
                    ((_ to_fp 11 53) x0_ack!683)))
    a!1)))

(check-sat)
(exit)
