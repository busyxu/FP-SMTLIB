(declare-fun x1_ack!544 () (_ BitVec 64))
(declare-fun x0_ack!548 () (_ BitVec 64))
(declare-fun x2_ack!545 () (_ BitVec 64))
(declare-fun b_ack!547 () (_ BitVec 64))
(declare-fun a_ack!546 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!548) ((_ to_fp 11 53) x1_ack!544)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!544) ((_ to_fp 11 53) x2_ack!545)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!544)
                       ((_ to_fp 11 53) x0_ack!548))
               ((_ to_fp 11 53) x0_ack!548))
       ((_ to_fp 11 53) x1_ack!544)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!544)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!544)
                       ((_ to_fp 11 53) x0_ack!548)))
       ((_ to_fp 11 53) x0_ack!548)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!545)
                       ((_ to_fp 11 53) x1_ack!544))
               ((_ to_fp 11 53) x1_ack!544))
       ((_ to_fp 11 53) x2_ack!545)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!545)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!545)
                       ((_ to_fp 11 53) x1_ack!544)))
       ((_ to_fp 11 53) x1_ack!544)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!544)
                    ((_ to_fp 11 53) x0_ack!548))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!545)
                    ((_ to_fp 11 53) x1_ack!544))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!546) ((_ to_fp 11 53) b_ack!547))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!546) ((_ to_fp 11 53) x0_ack!548))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!547) ((_ to_fp 11 53) x2_ack!545))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!546) ((_ to_fp 11 53) b_ack!547))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!546) ((_ to_fp 11 53) x0_ack!548))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!546) ((_ to_fp 11 53) x1_ack!544))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!547) ((_ to_fp 11 53) x0_ack!548))))

(check-sat)
(exit)
