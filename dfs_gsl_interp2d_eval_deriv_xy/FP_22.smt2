(declare-fun x1_ack!855 () (_ BitVec 64))
(declare-fun x0_ack!859 () (_ BitVec 64))
(declare-fun y0_ack!856 () (_ BitVec 64))
(declare-fun x_ack!857 () (_ BitVec 64))
(declare-fun y_ack!858 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!859) ((_ to_fp 11 53) x1_ack!855))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!856) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!857) ((_ to_fp 11 53) x0_ack!859))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!857) ((_ to_fp 11 53) x1_ack!855))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!858) ((_ to_fp 11 53) y0_ack!856))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!858) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!857) ((_ to_fp 11 53) x0_ack!859))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!857) ((_ to_fp 11 53) x1_ack!855)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!858) ((_ to_fp 11 53) y0_ack!856))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!858) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!855)
                       ((_ to_fp 11 53) x0_ack!859))
               ((_ to_fp 11 53) x0_ack!859))
       ((_ to_fp 11 53) x1_ack!855)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!855)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!855)
                       ((_ to_fp 11 53) x0_ack!859)))
       ((_ to_fp 11 53) x0_ack!859)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!856))
               ((_ to_fp 11 53) y0_ack!856))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!856)))
       ((_ to_fp 11 53) y0_ack!856)))

(check-sat)
(exit)
