(declare-fun x1_ack!977 () (_ BitVec 64))
(declare-fun x0_ack!981 () (_ BitVec 64))
(declare-fun x2_ack!978 () (_ BitVec 64))
(declare-fun b_ack!980 () (_ BitVec 64))
(declare-fun a_ack!979 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!981) ((_ to_fp 11 53) x1_ack!977)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!977) ((_ to_fp 11 53) x2_ack!978)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!977)
                       ((_ to_fp 11 53) x0_ack!981))
               ((_ to_fp 11 53) x0_ack!981))
       ((_ to_fp 11 53) x1_ack!977)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!977)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!977)
                       ((_ to_fp 11 53) x0_ack!981)))
       ((_ to_fp 11 53) x0_ack!981)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!978)
                       ((_ to_fp 11 53) x1_ack!977))
               ((_ to_fp 11 53) x1_ack!977))
       ((_ to_fp 11 53) x2_ack!978)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!978)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!978)
                       ((_ to_fp 11 53) x1_ack!977)))
       ((_ to_fp 11 53) x1_ack!977)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!977)
                    ((_ to_fp 11 53) x0_ack!981))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!978)
                    ((_ to_fp 11 53) x1_ack!977))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!979) ((_ to_fp 11 53) b_ack!980))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!979) ((_ to_fp 11 53) x0_ack!981))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!980) ((_ to_fp 11 53) x2_ack!978))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!979) ((_ to_fp 11 53) b_ack!980))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!979) ((_ to_fp 11 53) x0_ack!981))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!979) ((_ to_fp 11 53) x1_ack!977))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!980) ((_ to_fp 11 53) x0_ack!981))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!980) ((_ to_fp 11 53) x1_ack!977)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!977) ((_ to_fp 11 53) b_ack!980))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!977)
                    ((_ to_fp 11 53) x0_ack!981))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
