(declare-fun x1_ack!187 () (_ BitVec 64))
(declare-fun x0_ack!191 () (_ BitVec 64))
(declare-fun y0_ack!188 () (_ BitVec 64))
(declare-fun x_ack!189 () (_ BitVec 64))
(declare-fun y_ack!190 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!191) ((_ to_fp 11 53) x1_ack!187))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!188) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!189) ((_ to_fp 11 53) x0_ack!191))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!189) ((_ to_fp 11 53) x1_ack!187))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) y0_ack!188))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!189) ((_ to_fp 11 53) x0_ack!191))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!189) ((_ to_fp 11 53) x1_ack!187))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) y0_ack!188))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!187)
                       ((_ to_fp 11 53) x0_ack!191))
               ((_ to_fp 11 53) x0_ack!191))
       ((_ to_fp 11 53) x1_ack!187)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!187)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!187)
                       ((_ to_fp 11 53) x0_ack!191)))
       ((_ to_fp 11 53) x0_ack!191)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!188))
               ((_ to_fp 11 53) y0_ack!188))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!188)))
       ((_ to_fp 11 53) y0_ack!188)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!190)
                                   ((_ to_fp 11 53) y0_ack!188))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!188))))))
  (FPCHECK_FSUB_OVERFLOW #x8000000000000000 a!1)))

(check-sat)
(exit)
