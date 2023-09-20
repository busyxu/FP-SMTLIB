(declare-fun x1_ack!5950 () (_ BitVec 64))
(declare-fun x0_ack!5954 () (_ BitVec 64))
(declare-fun x2_ack!5951 () (_ BitVec 64))
(declare-fun b_ack!5953 () (_ BitVec 64))
(declare-fun a_ack!5952 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5954) ((_ to_fp 11 53) x1_ack!5950)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5950) ((_ to_fp 11 53) x2_ack!5951)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5950)
                       ((_ to_fp 11 53) x0_ack!5954))
               ((_ to_fp 11 53) x0_ack!5954))
       ((_ to_fp 11 53) x1_ack!5950)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5950)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5950)
                       ((_ to_fp 11 53) x0_ack!5954)))
       ((_ to_fp 11 53) x0_ack!5954)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5951)
                       ((_ to_fp 11 53) x1_ack!5950))
               ((_ to_fp 11 53) x1_ack!5950))
       ((_ to_fp 11 53) x2_ack!5951)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5951)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5951)
                       ((_ to_fp 11 53) x1_ack!5950)))
       ((_ to_fp 11 53) x1_ack!5950)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5950)
                    ((_ to_fp 11 53) x0_ack!5954))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5951)
                    ((_ to_fp 11 53) x1_ack!5950))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5952) ((_ to_fp 11 53) b_ack!5953))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5952) ((_ to_fp 11 53) x0_ack!5954))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5953) ((_ to_fp 11 53) x2_ack!5951))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5952) ((_ to_fp 11 53) b_ack!5953))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5952) ((_ to_fp 11 53) x0_ack!5954))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5952) ((_ to_fp 11 53) x1_ack!5950)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5950) ((_ to_fp 11 53) a_ack!5952))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5953) ((_ to_fp 11 53) x1_ack!5950))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5953) ((_ to_fp 11 53) x2_ack!5951))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x2_ack!5951)
                               ((_ to_fp 11 53) x1_ack!5950))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
