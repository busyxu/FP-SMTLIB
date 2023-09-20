(declare-fun x1_ack!5839 () (_ BitVec 64))
(declare-fun x0_ack!5843 () (_ BitVec 64))
(declare-fun x2_ack!5840 () (_ BitVec 64))
(declare-fun b_ack!5842 () (_ BitVec 64))
(declare-fun a_ack!5841 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5843) ((_ to_fp 11 53) x1_ack!5839)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5839) ((_ to_fp 11 53) x2_ack!5840)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5839)
                       ((_ to_fp 11 53) x0_ack!5843))
               ((_ to_fp 11 53) x0_ack!5843))
       ((_ to_fp 11 53) x1_ack!5839)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5839)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5839)
                       ((_ to_fp 11 53) x0_ack!5843)))
       ((_ to_fp 11 53) x0_ack!5843)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5840)
                       ((_ to_fp 11 53) x1_ack!5839))
               ((_ to_fp 11 53) x1_ack!5839))
       ((_ to_fp 11 53) x2_ack!5840)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5840)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5840)
                       ((_ to_fp 11 53) x1_ack!5839)))
       ((_ to_fp 11 53) x1_ack!5839)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5839)
                    ((_ to_fp 11 53) x0_ack!5843))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5840)
                    ((_ to_fp 11 53) x1_ack!5839))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5841) ((_ to_fp 11 53) b_ack!5842))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5841) ((_ to_fp 11 53) x0_ack!5843))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5842) ((_ to_fp 11 53) x2_ack!5840))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5841) ((_ to_fp 11 53) b_ack!5842))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5841) ((_ to_fp 11 53) x0_ack!5843))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5841) ((_ to_fp 11 53) x1_ack!5839)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5839) ((_ to_fp 11 53) a_ack!5841))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!5842) ((_ to_fp 11 53) x1_ack!5839)))

(check-sat)
(exit)
