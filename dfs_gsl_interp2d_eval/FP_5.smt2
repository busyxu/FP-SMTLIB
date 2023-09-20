(declare-fun x1_ack!167 () (_ BitVec 64))
(declare-fun x0_ack!171 () (_ BitVec 64))
(declare-fun y0_ack!168 () (_ BitVec 64))
(declare-fun x_ack!169 () (_ BitVec 64))
(declare-fun y_ack!170 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!171) ((_ to_fp 11 53) x1_ack!167))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!168) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!169) ((_ to_fp 11 53) x0_ack!171))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!169) ((_ to_fp 11 53) x1_ack!167))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!170) ((_ to_fp 11 53) y0_ack!168))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!170) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!169) ((_ to_fp 11 53) x0_ack!171))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!169) ((_ to_fp 11 53) x1_ack!167))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!170) ((_ to_fp 11 53) y0_ack!168))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!170) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!167)
                       ((_ to_fp 11 53) x0_ack!171))
               ((_ to_fp 11 53) x0_ack!171))
       ((_ to_fp 11 53) x1_ack!167)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!167)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!167)
                       ((_ to_fp 11 53) x0_ack!171)))
       ((_ to_fp 11 53) x0_ack!171)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!168))
               ((_ to_fp 11 53) y0_ack!168))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!168)))
       ((_ to_fp 11 53) y0_ack!168)))

(check-sat)
(exit)
