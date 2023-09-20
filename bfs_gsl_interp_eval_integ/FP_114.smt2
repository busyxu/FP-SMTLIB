(declare-fun x1_ack!6607 () (_ BitVec 64))
(declare-fun x0_ack!6611 () (_ BitVec 64))
(declare-fun x2_ack!6608 () (_ BitVec 64))
(declare-fun b_ack!6610 () (_ BitVec 64))
(declare-fun a_ack!6609 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6611) ((_ to_fp 11 53) x1_ack!6607)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6607) ((_ to_fp 11 53) x2_ack!6608)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6607)
                       ((_ to_fp 11 53) x0_ack!6611))
               ((_ to_fp 11 53) x0_ack!6611))
       ((_ to_fp 11 53) x1_ack!6607)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6607)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6607)
                       ((_ to_fp 11 53) x0_ack!6611)))
       ((_ to_fp 11 53) x0_ack!6611)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6608)
                       ((_ to_fp 11 53) x1_ack!6607))
               ((_ to_fp 11 53) x1_ack!6607))
       ((_ to_fp 11 53) x2_ack!6608)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6608)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6608)
                       ((_ to_fp 11 53) x1_ack!6607)))
       ((_ to_fp 11 53) x1_ack!6607)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6607)
                    ((_ to_fp 11 53) x0_ack!6611))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6608)
                    ((_ to_fp 11 53) x1_ack!6607))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6609) ((_ to_fp 11 53) b_ack!6610))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6609) ((_ to_fp 11 53) x0_ack!6611))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6610) ((_ to_fp 11 53) x2_ack!6608))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6609) ((_ to_fp 11 53) b_ack!6610))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6609) ((_ to_fp 11 53) x0_ack!6611))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6609) ((_ to_fp 11 53) x1_ack!6607))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6610) ((_ to_fp 11 53) x0_ack!6611))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6610) ((_ to_fp 11 53) x1_ack!6607)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6607) ((_ to_fp 11 53) b_ack!6610))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x1_ack!6607)
                               ((_ to_fp 11 53) x0_ack!6611))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
