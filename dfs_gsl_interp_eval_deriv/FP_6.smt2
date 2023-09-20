(declare-fun x1_ack!112 () (_ BitVec 64))
(declare-fun x0_ack!114 () (_ BitVec 64))
(declare-fun x2_ack!113 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!114) ((_ to_fp 11 53) x1_ack!112)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!112) ((_ to_fp 11 53) x2_ack!113)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!112)
                       ((_ to_fp 11 53) x0_ack!114))
               ((_ to_fp 11 53) x0_ack!114))
       ((_ to_fp 11 53) x1_ack!112)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!112)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!112)
                       ((_ to_fp 11 53) x0_ack!114)))
       ((_ to_fp 11 53) x0_ack!114)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!113)
                       ((_ to_fp 11 53) x1_ack!112))
               ((_ to_fp 11 53) x1_ack!112))
       ((_ to_fp 11 53) x2_ack!113)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!113)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!113)
                       ((_ to_fp 11 53) x1_ack!112)))
       ((_ to_fp 11 53) x1_ack!112)))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x1_ack!112)
                               ((_ to_fp 11 53) x0_ack!114))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
