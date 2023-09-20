(declare-fun x1_ack!4346 () (_ BitVec 64))
(declare-fun x0_ack!4350 () (_ BitVec 64))
(declare-fun y0_ack!4347 () (_ BitVec 64))
(declare-fun x_ack!4348 () (_ BitVec 64))
(declare-fun y_ack!4349 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4350) ((_ to_fp 11 53) x1_ack!4346))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4347) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4348) ((_ to_fp 11 53) x0_ack!4350)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4349) ((_ to_fp 11 53) y0_ack!4347))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4349) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4346)
                       ((_ to_fp 11 53) x0_ack!4350))
               ((_ to_fp 11 53) x0_ack!4350))
       ((_ to_fp 11 53) x1_ack!4346)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4346)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4346)
                       ((_ to_fp 11 53) x0_ack!4350)))
       ((_ to_fp 11 53) x0_ack!4350)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4347))
               ((_ to_fp 11 53) y0_ack!4347))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4347)))
       ((_ to_fp 11 53) y0_ack!4347)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4348)
                       ((_ to_fp 11 53) x0_ack!4350))
               ((_ to_fp 11 53) x0_ack!4350))
       ((_ to_fp 11 53) x_ack!4348)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4348)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4348)
                       ((_ to_fp 11 53) x0_ack!4350)))
       ((_ to_fp 11 53) x0_ack!4350)))

(check-sat)
(exit)
