(declare-fun x1_ack!519 () (_ BitVec 64))
(declare-fun x0_ack!523 () (_ BitVec 64))
(declare-fun x2_ack!520 () (_ BitVec 64))
(declare-fun b_ack!522 () (_ BitVec 64))
(declare-fun a_ack!521 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!523) ((_ to_fp 11 53) x1_ack!519)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!519) ((_ to_fp 11 53) x2_ack!520)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!519)
                       ((_ to_fp 11 53) x0_ack!523))
               ((_ to_fp 11 53) x0_ack!523))
       ((_ to_fp 11 53) x1_ack!519)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!519)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!519)
                       ((_ to_fp 11 53) x0_ack!523)))
       ((_ to_fp 11 53) x0_ack!523)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!520)
                       ((_ to_fp 11 53) x1_ack!519))
               ((_ to_fp 11 53) x1_ack!519))
       ((_ to_fp 11 53) x2_ack!520)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!520)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!520)
                       ((_ to_fp 11 53) x1_ack!519)))
       ((_ to_fp 11 53) x1_ack!519)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!519)
                    ((_ to_fp 11 53) x0_ack!523))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!520)
                    ((_ to_fp 11 53) x1_ack!519))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!521) ((_ to_fp 11 53) b_ack!522))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!521) ((_ to_fp 11 53) x0_ack!523))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!522) ((_ to_fp 11 53) x2_ack!520))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!521) ((_ to_fp 11 53) b_ack!522))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!521) ((_ to_fp 11 53) x0_ack!523))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!521) ((_ to_fp 11 53) x1_ack!519)))

(check-sat)
(exit)
