(declare-fun x1_ack!346 () (_ BitVec 64))
(declare-fun x0_ack!350 () (_ BitVec 64))
(declare-fun y0_ack!347 () (_ BitVec 64))
(declare-fun x_ack!348 () (_ BitVec 64))
(declare-fun y_ack!349 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!350) ((_ to_fp 11 53) x1_ack!346))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!347) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!348) ((_ to_fp 11 53) x0_ack!350))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!348) ((_ to_fp 11 53) x1_ack!346))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!349) ((_ to_fp 11 53) y0_ack!347))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!349) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!348) ((_ to_fp 11 53) x0_ack!350))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!348) ((_ to_fp 11 53) x1_ack!346))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!349) ((_ to_fp 11 53) y0_ack!347))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!349) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!346)
                       ((_ to_fp 11 53) x0_ack!350))
               ((_ to_fp 11 53) x0_ack!350))
       ((_ to_fp 11 53) x1_ack!346)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!346)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!346)
                       ((_ to_fp 11 53) x0_ack!350)))
       ((_ to_fp 11 53) x0_ack!350)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!347))
               ((_ to_fp 11 53) y0_ack!347))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!347)))
       ((_ to_fp 11 53) y0_ack!347)))

(check-sat)
(exit)
