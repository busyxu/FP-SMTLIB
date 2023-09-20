(declare-fun x1_ack!262 () (_ BitVec 64))
(declare-fun x0_ack!267 () (_ BitVec 64))
(declare-fun x2_ack!263 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!264 () (_ BitVec 64))
(declare-fun y1_ack!265 () (_ BitVec 64))
(declare-fun y2_ack!266 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!267) ((_ to_fp 11 53) x1_ack!262)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!262) ((_ to_fp 11 53) x2_ack!263)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!262)
                       ((_ to_fp 11 53) x0_ack!267))
               ((_ to_fp 11 53) x0_ack!267))
       ((_ to_fp 11 53) x1_ack!262)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!262)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!262)
                       ((_ to_fp 11 53) x0_ack!267)))
       ((_ to_fp 11 53) x0_ack!267)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!263)
                       ((_ to_fp 11 53) x1_ack!262))
               ((_ to_fp 11 53) x1_ack!262))
       ((_ to_fp 11 53) x2_ack!263)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!263)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!263)
                       ((_ to_fp 11 53) x1_ack!262)))
       ((_ to_fp 11 53) x1_ack!262)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!262)
                    ((_ to_fp 11 53) x0_ack!267))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!263)
                    ((_ to_fp 11 53) x1_ack!262))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!266)
                           ((_ to_fp 11 53) y1_ack!265))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!263)
                                   ((_ to_fp 11 53) x1_ack!262)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!265)
                           ((_ to_fp 11 53) y0_ack!264))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!262)
                                   ((_ to_fp 11 53) x0_ack!267))))))
  (FPCHECK_FSUB_ACCURACY a!1 a!2)))

(check-sat)
(exit)
