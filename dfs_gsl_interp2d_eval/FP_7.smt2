(declare-fun x1_ack!297 () (_ BitVec 64))
(declare-fun x0_ack!301 () (_ BitVec 64))
(declare-fun y0_ack!298 () (_ BitVec 64))
(declare-fun x_ack!299 () (_ BitVec 64))
(declare-fun y_ack!300 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!301) ((_ to_fp 11 53) x1_ack!297))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!298) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!299) ((_ to_fp 11 53) x0_ack!301))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!299) ((_ to_fp 11 53) x1_ack!297))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!300) ((_ to_fp 11 53) y0_ack!298))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!300) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!299) ((_ to_fp 11 53) x0_ack!301))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!299) ((_ to_fp 11 53) x1_ack!297))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!300) ((_ to_fp 11 53) y0_ack!298))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!300) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!297)
                       ((_ to_fp 11 53) x0_ack!301))
               ((_ to_fp 11 53) x0_ack!301))
       ((_ to_fp 11 53) x1_ack!297)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!297)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!297)
                       ((_ to_fp 11 53) x0_ack!301)))
       ((_ to_fp 11 53) x0_ack!301)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!298))
               ((_ to_fp 11 53) y0_ack!298))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!298)))
       ((_ to_fp 11 53) y0_ack!298)))

(check-sat)
(exit)
