(declare-fun x1_ack!367 () (_ BitVec 64))
(declare-fun x0_ack!369 () (_ BitVec 64))
(declare-fun x2_ack!368 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!369) ((_ to_fp 11 53) x1_ack!367)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!367) ((_ to_fp 11 53) x2_ack!368)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!367)
                       ((_ to_fp 11 53) x0_ack!369))
               ((_ to_fp 11 53) x0_ack!369))
       ((_ to_fp 11 53) x1_ack!367)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!367)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!367)
                       ((_ to_fp 11 53) x0_ack!369)))
       ((_ to_fp 11 53) x0_ack!369)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!368)
                       ((_ to_fp 11 53) x1_ack!367))
               ((_ to_fp 11 53) x1_ack!367))
       ((_ to_fp 11 53) x2_ack!368)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!368)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!368)
                       ((_ to_fp 11 53) x1_ack!367)))
       ((_ to_fp 11 53) x1_ack!367)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!367)
                    ((_ to_fp 11 53) x0_ack!369))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!368)
                    ((_ to_fp 11 53) x1_ack!367))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
