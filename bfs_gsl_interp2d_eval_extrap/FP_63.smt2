(declare-fun x1_ack!2506 () (_ BitVec 64))
(declare-fun x0_ack!2510 () (_ BitVec 64))
(declare-fun y0_ack!2507 () (_ BitVec 64))
(declare-fun x_ack!2508 () (_ BitVec 64))
(declare-fun y_ack!2509 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2510) ((_ to_fp 11 53) x1_ack!2506))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2507) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2508) ((_ to_fp 11 53) x0_ack!2510))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2508) ((_ to_fp 11 53) x1_ack!2506))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2509) ((_ to_fp 11 53) y0_ack!2507))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2509) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2506)
                       ((_ to_fp 11 53) x0_ack!2510))
               ((_ to_fp 11 53) x0_ack!2510))
       ((_ to_fp 11 53) x1_ack!2506)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2506)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2506)
                       ((_ to_fp 11 53) x0_ack!2510)))
       ((_ to_fp 11 53) x0_ack!2510)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2507))
               ((_ to_fp 11 53) y0_ack!2507))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2507)))
       ((_ to_fp 11 53) y0_ack!2507)))

(check-sat)
(exit)
