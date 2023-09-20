(declare-fun x1_ack!250 () (_ BitVec 64))
(declare-fun x0_ack!255 () (_ BitVec 64))
(declare-fun x2_ack!251 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!252 () (_ BitVec 64))
(declare-fun y1_ack!253 () (_ BitVec 64))
(declare-fun y2_ack!254 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!255) ((_ to_fp 11 53) x1_ack!250)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!250) ((_ to_fp 11 53) x2_ack!251)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!250)
                       ((_ to_fp 11 53) x0_ack!255))
               ((_ to_fp 11 53) x0_ack!255))
       ((_ to_fp 11 53) x1_ack!250)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!250)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!250)
                       ((_ to_fp 11 53) x0_ack!255)))
       ((_ to_fp 11 53) x0_ack!255)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!251)
                       ((_ to_fp 11 53) x1_ack!250))
               ((_ to_fp 11 53) x1_ack!250))
       ((_ to_fp 11 53) x2_ack!251)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!251)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!251)
                       ((_ to_fp 11 53) x1_ack!250)))
       ((_ to_fp 11 53) x1_ack!250)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!250)
                    ((_ to_fp 11 53) x0_ack!255))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!251)
                    ((_ to_fp 11 53) x1_ack!250))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!254)
                           ((_ to_fp 11 53) y1_ack!253))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!251)
                                   ((_ to_fp 11 53) x1_ack!250)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!253)
                           ((_ to_fp 11 53) y0_ack!252))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!250)
                                   ((_ to_fp 11 53) x0_ack!255))))))
  (FPCHECK_FSUB_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
