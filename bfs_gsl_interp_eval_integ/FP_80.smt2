(declare-fun x1_ack!4290 () (_ BitVec 64))
(declare-fun x0_ack!4294 () (_ BitVec 64))
(declare-fun x2_ack!4291 () (_ BitVec 64))
(declare-fun b_ack!4293 () (_ BitVec 64))
(declare-fun a_ack!4292 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4294) ((_ to_fp 11 53) x1_ack!4290)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4290) ((_ to_fp 11 53) x2_ack!4291)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4290)
                       ((_ to_fp 11 53) x0_ack!4294))
               ((_ to_fp 11 53) x0_ack!4294))
       ((_ to_fp 11 53) x1_ack!4290)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4290)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4290)
                       ((_ to_fp 11 53) x0_ack!4294)))
       ((_ to_fp 11 53) x0_ack!4294)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4291)
                       ((_ to_fp 11 53) x1_ack!4290))
               ((_ to_fp 11 53) x1_ack!4290))
       ((_ to_fp 11 53) x2_ack!4291)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4291)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4291)
                       ((_ to_fp 11 53) x1_ack!4290)))
       ((_ to_fp 11 53) x1_ack!4290)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4290)
                    ((_ to_fp 11 53) x0_ack!4294))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4291)
                    ((_ to_fp 11 53) x1_ack!4290))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4292) ((_ to_fp 11 53) b_ack!4293))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4292) ((_ to_fp 11 53) x0_ack!4294))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4293) ((_ to_fp 11 53) x2_ack!4291))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4292) ((_ to_fp 11 53) b_ack!4293))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4292) ((_ to_fp 11 53) x0_ack!4294))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4292) ((_ to_fp 11 53) x1_ack!4290))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4293) ((_ to_fp 11 53) x0_ack!4294))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4293) ((_ to_fp 11 53) x1_ack!4290))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4290)
                    ((_ to_fp 11 53) x0_ack!4294))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
