(declare-fun x1_ack!338 () (_ BitVec 64))
(declare-fun x0_ack!342 () (_ BitVec 64))
(declare-fun y0_ack!339 () (_ BitVec 64))
(declare-fun x_ack!340 () (_ BitVec 64))
(declare-fun y_ack!341 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!342) ((_ to_fp 11 53) x1_ack!338))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!339) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!340) ((_ to_fp 11 53) x0_ack!342))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!340) ((_ to_fp 11 53) x1_ack!338))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!341) ((_ to_fp 11 53) y0_ack!339))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!341) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!340) ((_ to_fp 11 53) x0_ack!342))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!340) ((_ to_fp 11 53) x1_ack!338))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!341) ((_ to_fp 11 53) y0_ack!339))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!341) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!338)
                       ((_ to_fp 11 53) x0_ack!342))
               ((_ to_fp 11 53) x0_ack!342))
       ((_ to_fp 11 53) x1_ack!338)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!338)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!338)
                       ((_ to_fp 11 53) x0_ack!342)))
       ((_ to_fp 11 53) x0_ack!342)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!339))
               ((_ to_fp 11 53) y0_ack!339))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!339)))
       ((_ to_fp 11 53) y0_ack!339)))

(check-sat)
(exit)
