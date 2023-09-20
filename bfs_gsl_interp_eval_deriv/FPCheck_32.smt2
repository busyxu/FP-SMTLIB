(declare-fun x1_ack!235 () (_ BitVec 64))
(declare-fun x0_ack!240 () (_ BitVec 64))
(declare-fun x2_ack!236 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!237 () (_ BitVec 64))
(declare-fun y1_ack!238 () (_ BitVec 64))
(declare-fun y2_ack!239 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!240) ((_ to_fp 11 53) x1_ack!235)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!235) ((_ to_fp 11 53) x2_ack!236)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!235)
                       ((_ to_fp 11 53) x0_ack!240))
               ((_ to_fp 11 53) x0_ack!240))
       ((_ to_fp 11 53) x1_ack!235)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!235)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!235)
                       ((_ to_fp 11 53) x0_ack!240)))
       ((_ to_fp 11 53) x0_ack!240)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!236)
                       ((_ to_fp 11 53) x1_ack!235))
               ((_ to_fp 11 53) x1_ack!235))
       ((_ to_fp 11 53) x2_ack!236)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!236)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!236)
                       ((_ to_fp 11 53) x1_ack!235)))
       ((_ to_fp 11 53) x1_ack!235)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!235)
                    ((_ to_fp 11 53) x0_ack!240))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!236)
                    ((_ to_fp 11 53) x1_ack!235))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!239)
                           ((_ to_fp 11 53) y1_ack!238))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!236)
                                   ((_ to_fp 11 53) x1_ack!235)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!238)
                           ((_ to_fp 11 53) y0_ack!237))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!235)
                                   ((_ to_fp 11 53) x0_ack!240))))))
  (FPCHECK_FSUB_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
