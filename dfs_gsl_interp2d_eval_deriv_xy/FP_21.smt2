(declare-fun x1_ack!820 () (_ BitVec 64))
(declare-fun x0_ack!824 () (_ BitVec 64))
(declare-fun y0_ack!821 () (_ BitVec 64))
(declare-fun x_ack!822 () (_ BitVec 64))
(declare-fun y_ack!823 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!824) ((_ to_fp 11 53) x1_ack!820))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!821) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!822) ((_ to_fp 11 53) x0_ack!824))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!822) ((_ to_fp 11 53) x1_ack!820))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!823) ((_ to_fp 11 53) y0_ack!821))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!823) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!822) ((_ to_fp 11 53) x0_ack!824))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!822) ((_ to_fp 11 53) x1_ack!820)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!823) ((_ to_fp 11 53) y0_ack!821))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!823) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!820)
                       ((_ to_fp 11 53) x0_ack!824))
               ((_ to_fp 11 53) x0_ack!824))
       ((_ to_fp 11 53) x1_ack!820)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!820)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!820)
                       ((_ to_fp 11 53) x0_ack!824)))
       ((_ to_fp 11 53) x0_ack!824)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!821))
               ((_ to_fp 11 53) y0_ack!821))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!821)))
       ((_ to_fp 11 53) y0_ack!821)))

(check-sat)
(exit)
