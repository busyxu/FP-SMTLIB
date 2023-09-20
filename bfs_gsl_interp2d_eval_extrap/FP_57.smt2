(declare-fun x1_ack!2291 () (_ BitVec 64))
(declare-fun x0_ack!2295 () (_ BitVec 64))
(declare-fun y0_ack!2292 () (_ BitVec 64))
(declare-fun x_ack!2293 () (_ BitVec 64))
(declare-fun y_ack!2294 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2295) ((_ to_fp 11 53) x1_ack!2291))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2292) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2293) ((_ to_fp 11 53) x0_ack!2295))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2293) ((_ to_fp 11 53) x1_ack!2291)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2294) ((_ to_fp 11 53) y0_ack!2292))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2294) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2291)
                       ((_ to_fp 11 53) x0_ack!2295))
               ((_ to_fp 11 53) x0_ack!2295))
       ((_ to_fp 11 53) x1_ack!2291)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2291)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2291)
                       ((_ to_fp 11 53) x0_ack!2295)))
       ((_ to_fp 11 53) x0_ack!2295)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2294)
                       ((_ to_fp 11 53) y0_ack!2292))
               ((_ to_fp 11 53) y0_ack!2292))
       ((_ to_fp 11 53) y_ack!2294)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2294)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2294)
                       ((_ to_fp 11 53) y0_ack!2292)))
       ((_ to_fp 11 53) y0_ack!2292)))

(check-sat)
(exit)
