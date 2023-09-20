(declare-fun xx_ack!475 () (_ BitVec 64))
(declare-fun x0_ack!476 () (_ BitVec 64))
(declare-fun x1_ack!472 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!473 () (_ BitVec 64))
(declare-fun y1_ack!474 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!475) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!475) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!475) ((_ to_fp 11 53) x0_ack!476)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!472)
               ((_ to_fp 11 53) x0_ack!476))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!475)
                       ((_ to_fp 11 53) x0_ack!476))
               ((_ to_fp 11 53) x0_ack!476))
       ((_ to_fp 11 53) xx_ack!475)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!475)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!475)
                       ((_ to_fp 11 53) x0_ack!476)))
       ((_ to_fp 11 53) x0_ack!476)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!472)
                                   ((_ to_fp 11 53) x0_ack!476))
                           ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!474)
                    ((_ to_fp 11 53) y0_ack!473))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!472)
                    ((_ to_fp 11 53) x0_ack!476)))
    a!1)))

(check-sat)
(exit)
