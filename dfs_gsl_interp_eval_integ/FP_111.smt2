(declare-fun x1_ack!6645 () (_ BitVec 64))
(declare-fun x0_ack!6649 () (_ BitVec 64))
(declare-fun x2_ack!6646 () (_ BitVec 64))
(declare-fun b_ack!6648 () (_ BitVec 64))
(declare-fun a_ack!6647 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6649) ((_ to_fp 11 53) x1_ack!6645)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6645) ((_ to_fp 11 53) x2_ack!6646)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6645)
                       ((_ to_fp 11 53) x0_ack!6649))
               ((_ to_fp 11 53) x0_ack!6649))
       ((_ to_fp 11 53) x1_ack!6645)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6645)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6645)
                       ((_ to_fp 11 53) x0_ack!6649)))
       ((_ to_fp 11 53) x0_ack!6649)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6646)
                       ((_ to_fp 11 53) x1_ack!6645))
               ((_ to_fp 11 53) x1_ack!6645))
       ((_ to_fp 11 53) x2_ack!6646)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6646)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6646)
                       ((_ to_fp 11 53) x1_ack!6645)))
       ((_ to_fp 11 53) x1_ack!6645)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6645)
                    ((_ to_fp 11 53) x0_ack!6649))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6646)
                    ((_ to_fp 11 53) x1_ack!6645))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6647) ((_ to_fp 11 53) b_ack!6648))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6647) ((_ to_fp 11 53) x0_ack!6649))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6648) ((_ to_fp 11 53) x2_ack!6646))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6647) ((_ to_fp 11 53) b_ack!6648))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6647) ((_ to_fp 11 53) x0_ack!6649))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6647) ((_ to_fp 11 53) x1_ack!6645)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6645) ((_ to_fp 11 53) a_ack!6647))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6648) ((_ to_fp 11 53) x1_ack!6645))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6648) ((_ to_fp 11 53) x2_ack!6646))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6646)
                    ((_ to_fp 11 53) x1_ack!6645))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
