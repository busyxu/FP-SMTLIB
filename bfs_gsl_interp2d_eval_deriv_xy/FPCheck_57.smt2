(declare-fun x1_ack!622 () (_ BitVec 64))
(declare-fun x0_ack!626 () (_ BitVec 64))
(declare-fun y0_ack!623 () (_ BitVec 64))
(declare-fun x_ack!624 () (_ BitVec 64))
(declare-fun y_ack!625 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!626) ((_ to_fp 11 53) x1_ack!622))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!623) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!624) ((_ to_fp 11 53) x0_ack!626))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!624) ((_ to_fp 11 53) x1_ack!622))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!625) ((_ to_fp 11 53) y0_ack!623))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!625) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!624) ((_ to_fp 11 53) x0_ack!626))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!624) ((_ to_fp 11 53) x1_ack!622))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!625) ((_ to_fp 11 53) y0_ack!623))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!625) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!622)
                       ((_ to_fp 11 53) x0_ack!626))
               ((_ to_fp 11 53) x0_ack!626))
       ((_ to_fp 11 53) x1_ack!622)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!622)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!622)
                       ((_ to_fp 11 53) x0_ack!626)))
       ((_ to_fp 11 53) x0_ack!626)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!623))
               ((_ to_fp 11 53) y0_ack!623))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!623)))
       ((_ to_fp 11 53) y0_ack!623)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) y0_ack!623))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
