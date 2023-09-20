(declare-fun x1_ack!5101 () (_ BitVec 64))
(declare-fun x0_ack!5105 () (_ BitVec 64))
(declare-fun x2_ack!5102 () (_ BitVec 64))
(declare-fun b_ack!5104 () (_ BitVec 64))
(declare-fun a_ack!5103 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5105) ((_ to_fp 11 53) x1_ack!5101)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5101) ((_ to_fp 11 53) x2_ack!5102)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5101)
                       ((_ to_fp 11 53) x0_ack!5105))
               ((_ to_fp 11 53) x0_ack!5105))
       ((_ to_fp 11 53) x1_ack!5101)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5101)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5101)
                       ((_ to_fp 11 53) x0_ack!5105)))
       ((_ to_fp 11 53) x0_ack!5105)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5102)
                       ((_ to_fp 11 53) x1_ack!5101))
               ((_ to_fp 11 53) x1_ack!5101))
       ((_ to_fp 11 53) x2_ack!5102)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5102)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5102)
                       ((_ to_fp 11 53) x1_ack!5101)))
       ((_ to_fp 11 53) x1_ack!5101)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5101)
                    ((_ to_fp 11 53) x0_ack!5105))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5102)
                    ((_ to_fp 11 53) x1_ack!5101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) b_ack!5104))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) x0_ack!5105))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5104) ((_ to_fp 11 53) x2_ack!5102))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) b_ack!5104))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) x0_ack!5105))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) x1_ack!5101)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5101) ((_ to_fp 11 53) a_ack!5103))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5104) ((_ to_fp 11 53) x1_ack!5101))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5104) ((_ to_fp 11 53) x2_ack!5102)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5102)
                    ((_ to_fp 11 53) x1_ack!5101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5103)
                       ((_ to_fp 11 53) x1_ack!5101))
               ((_ to_fp 11 53) x1_ack!5101))
       ((_ to_fp 11 53) a_ack!5103)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5103)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5103)
                       ((_ to_fp 11 53) x1_ack!5101)))
       ((_ to_fp 11 53) x1_ack!5101)))

(check-sat)
(exit)
