(declare-fun x1_ack!4343 () (_ BitVec 64))
(declare-fun x0_ack!4347 () (_ BitVec 64))
(declare-fun x2_ack!4344 () (_ BitVec 64))
(declare-fun b_ack!4346 () (_ BitVec 64))
(declare-fun a_ack!4345 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4347) ((_ to_fp 11 53) x1_ack!4343)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4343) ((_ to_fp 11 53) x2_ack!4344)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4343)
                       ((_ to_fp 11 53) x0_ack!4347))
               ((_ to_fp 11 53) x0_ack!4347))
       ((_ to_fp 11 53) x1_ack!4343)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4343)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4343)
                       ((_ to_fp 11 53) x0_ack!4347)))
       ((_ to_fp 11 53) x0_ack!4347)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4344)
                       ((_ to_fp 11 53) x1_ack!4343))
               ((_ to_fp 11 53) x1_ack!4343))
       ((_ to_fp 11 53) x2_ack!4344)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4344)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4344)
                       ((_ to_fp 11 53) x1_ack!4343)))
       ((_ to_fp 11 53) x1_ack!4343)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4343)
                    ((_ to_fp 11 53) x0_ack!4347))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4344)
                    ((_ to_fp 11 53) x1_ack!4343))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4345) ((_ to_fp 11 53) b_ack!4346))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4345) ((_ to_fp 11 53) x0_ack!4347))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4346) ((_ to_fp 11 53) x2_ack!4344))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4345) ((_ to_fp 11 53) b_ack!4346))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4345) ((_ to_fp 11 53) x0_ack!4347))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4345) ((_ to_fp 11 53) x1_ack!4343))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4346) ((_ to_fp 11 53) x0_ack!4347))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4346) ((_ to_fp 11 53) x1_ack!4343))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4343)
                    ((_ to_fp 11 53) x0_ack!4347))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
