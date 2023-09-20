(declare-fun x1_ack!373 () (_ BitVec 64))
(declare-fun x0_ack!377 () (_ BitVec 64))
(declare-fun x2_ack!374 () (_ BitVec 64))
(declare-fun b_ack!376 () (_ BitVec 64))
(declare-fun a_ack!375 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!377) ((_ to_fp 11 53) x1_ack!373)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!373) ((_ to_fp 11 53) x2_ack!374)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!373)
                       ((_ to_fp 11 53) x0_ack!377))
               ((_ to_fp 11 53) x0_ack!377))
       ((_ to_fp 11 53) x1_ack!373)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!373)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!373)
                       ((_ to_fp 11 53) x0_ack!377)))
       ((_ to_fp 11 53) x0_ack!377)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!374)
                       ((_ to_fp 11 53) x1_ack!373))
               ((_ to_fp 11 53) x1_ack!373))
       ((_ to_fp 11 53) x2_ack!374)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!374)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!374)
                       ((_ to_fp 11 53) x1_ack!373)))
       ((_ to_fp 11 53) x1_ack!373)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!373)
                    ((_ to_fp 11 53) x0_ack!377))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!374)
                    ((_ to_fp 11 53) x1_ack!373))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) b_ack!376)))

(check-sat)
(exit)
