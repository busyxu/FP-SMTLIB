(declare-fun x1_ack!2842 () (_ BitVec 64))
(declare-fun x0_ack!2846 () (_ BitVec 64))
(declare-fun y0_ack!2843 () (_ BitVec 64))
(declare-fun x_ack!2844 () (_ BitVec 64))
(declare-fun y_ack!2845 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2846) ((_ to_fp 11 53) x1_ack!2842))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2843) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2844) ((_ to_fp 11 53) x0_ack!2846))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2844) ((_ to_fp 11 53) x1_ack!2842))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2845) ((_ to_fp 11 53) y0_ack!2843))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2845) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2842)
                       ((_ to_fp 11 53) x0_ack!2846))
               ((_ to_fp 11 53) x0_ack!2846))
       ((_ to_fp 11 53) x1_ack!2842)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2842)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2842)
                       ((_ to_fp 11 53) x0_ack!2846)))
       ((_ to_fp 11 53) x0_ack!2846)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2843))
               ((_ to_fp 11 53) y0_ack!2843))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2843)))
       ((_ to_fp 11 53) y0_ack!2843)))

(check-sat)
(exit)
