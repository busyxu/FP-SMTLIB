(declare-fun x1_ack!224 () (_ BitVec 64))
(declare-fun x0_ack!229 () (_ BitVec 64))
(declare-fun y0_ack!225 () (_ BitVec 64))
(declare-fun x_ack!227 () (_ BitVec 64))
(declare-fun y_ack!228 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z0_ack!226 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!229) ((_ to_fp 11 53) x1_ack!224))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!225) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!227) ((_ to_fp 11 53) x0_ack!229))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!227) ((_ to_fp 11 53) x1_ack!224))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!228) ((_ to_fp 11 53) y0_ack!225))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!228) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!227) ((_ to_fp 11 53) x0_ack!229))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!227) ((_ to_fp 11 53) x1_ack!224))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!228) ((_ to_fp 11 53) y0_ack!225))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!228) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!224)
                       ((_ to_fp 11 53) x0_ack!229))
               ((_ to_fp 11 53) x0_ack!229))
       ((_ to_fp 11 53) x1_ack!224)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!224)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!224)
                       ((_ to_fp 11 53) x0_ack!229)))
       ((_ to_fp 11 53) x0_ack!229)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!225))
               ((_ to_fp 11 53) y0_ack!225))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!225)))
       ((_ to_fp 11 53) y0_ack!225)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!228)
                                   ((_ to_fp 11 53) y0_ack!225))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!225))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!1)
    z0_ack!226)))

(check-sat)
(exit)
