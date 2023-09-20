(declare-fun x1_ack!5849 () (_ BitVec 64))
(declare-fun x0_ack!5853 () (_ BitVec 64))
(declare-fun x2_ack!5850 () (_ BitVec 64))
(declare-fun b_ack!5852 () (_ BitVec 64))
(declare-fun a_ack!5851 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5853) ((_ to_fp 11 53) x1_ack!5849)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5849) ((_ to_fp 11 53) x2_ack!5850)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5849)
                       ((_ to_fp 11 53) x0_ack!5853))
               ((_ to_fp 11 53) x0_ack!5853))
       ((_ to_fp 11 53) x1_ack!5849)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5849)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5849)
                       ((_ to_fp 11 53) x0_ack!5853)))
       ((_ to_fp 11 53) x0_ack!5853)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5850)
                       ((_ to_fp 11 53) x1_ack!5849))
               ((_ to_fp 11 53) x1_ack!5849))
       ((_ to_fp 11 53) x2_ack!5850)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5850)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5850)
                       ((_ to_fp 11 53) x1_ack!5849)))
       ((_ to_fp 11 53) x1_ack!5849)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5849)
                    ((_ to_fp 11 53) x0_ack!5853))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5850)
                    ((_ to_fp 11 53) x1_ack!5849))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5851) ((_ to_fp 11 53) b_ack!5852))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5851) ((_ to_fp 11 53) x0_ack!5853))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5852) ((_ to_fp 11 53) x2_ack!5850))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5851) ((_ to_fp 11 53) b_ack!5852))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5851) ((_ to_fp 11 53) x0_ack!5853))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5851) ((_ to_fp 11 53) x1_ack!5849)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5849) ((_ to_fp 11 53) a_ack!5851))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5852) ((_ to_fp 11 53) x1_ack!5849))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5852) ((_ to_fp 11 53) x2_ack!5850))))

(check-sat)
(exit)
