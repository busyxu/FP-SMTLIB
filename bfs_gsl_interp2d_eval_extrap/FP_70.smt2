(declare-fun x1_ack!2883 () (_ BitVec 64))
(declare-fun x0_ack!2887 () (_ BitVec 64))
(declare-fun y0_ack!2884 () (_ BitVec 64))
(declare-fun x_ack!2885 () (_ BitVec 64))
(declare-fun y_ack!2886 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2887) ((_ to_fp 11 53) x1_ack!2883))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2884) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2885) ((_ to_fp 11 53) x0_ack!2887))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2885) ((_ to_fp 11 53) x1_ack!2883))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2886) ((_ to_fp 11 53) y0_ack!2884))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2886) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2883)
                       ((_ to_fp 11 53) x0_ack!2887))
               ((_ to_fp 11 53) x0_ack!2887))
       ((_ to_fp 11 53) x1_ack!2883)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2883)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2883)
                       ((_ to_fp 11 53) x0_ack!2887)))
       ((_ to_fp 11 53) x0_ack!2887)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2884))
               ((_ to_fp 11 53) y0_ack!2884))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2884)))
       ((_ to_fp 11 53) y0_ack!2884)))

(check-sat)
(exit)
