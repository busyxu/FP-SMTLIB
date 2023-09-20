(declare-fun x1_ack!202 () (_ BitVec 64))
(declare-fun x0_ack!206 () (_ BitVec 64))
(declare-fun y0_ack!203 () (_ BitVec 64))
(declare-fun x_ack!204 () (_ BitVec 64))
(declare-fun y_ack!205 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!206) ((_ to_fp 11 53) x1_ack!202))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!203) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!204) ((_ to_fp 11 53) x0_ack!206))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!204) ((_ to_fp 11 53) x1_ack!202))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!205) ((_ to_fp 11 53) y0_ack!203))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!205) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!202)
                       ((_ to_fp 11 53) x0_ack!206))
               ((_ to_fp 11 53) x0_ack!206))
       ((_ to_fp 11 53) x1_ack!202)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!202)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!202)
                       ((_ to_fp 11 53) x0_ack!206)))
       ((_ to_fp 11 53) x0_ack!206)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!203))
               ((_ to_fp 11 53) y0_ack!203))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!203)))
       ((_ to_fp 11 53) y0_ack!203)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!205)
                       ((_ to_fp 11 53) y0_ack!203))
               ((_ to_fp 11 53) y0_ack!203))
       ((_ to_fp 11 53) y_ack!205)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!205)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!205)
                       ((_ to_fp 11 53) y0_ack!203)))
       ((_ to_fp 11 53) y0_ack!203)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!205)
          ((_ to_fp 11 53) y0_ack!203))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!203))))

(check-sat)
(exit)
