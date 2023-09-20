(declare-fun x1_ack!4715 () (_ BitVec 64))
(declare-fun x0_ack!4719 () (_ BitVec 64))
(declare-fun x2_ack!4716 () (_ BitVec 64))
(declare-fun b_ack!4718 () (_ BitVec 64))
(declare-fun a_ack!4717 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4719) ((_ to_fp 11 53) x1_ack!4715)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4715) ((_ to_fp 11 53) x2_ack!4716)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4715)
                       ((_ to_fp 11 53) x0_ack!4719))
               ((_ to_fp 11 53) x0_ack!4719))
       ((_ to_fp 11 53) x1_ack!4715)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4715)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4715)
                       ((_ to_fp 11 53) x0_ack!4719)))
       ((_ to_fp 11 53) x0_ack!4719)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4716)
                       ((_ to_fp 11 53) x1_ack!4715))
               ((_ to_fp 11 53) x1_ack!4715))
       ((_ to_fp 11 53) x2_ack!4716)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4716)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4716)
                       ((_ to_fp 11 53) x1_ack!4715)))
       ((_ to_fp 11 53) x1_ack!4715)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4715)
                    ((_ to_fp 11 53) x0_ack!4719))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4716)
                    ((_ to_fp 11 53) x1_ack!4715))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4717) ((_ to_fp 11 53) b_ack!4718))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4717) ((_ to_fp 11 53) x0_ack!4719))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4718) ((_ to_fp 11 53) x2_ack!4716))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4717) ((_ to_fp 11 53) b_ack!4718))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4717) ((_ to_fp 11 53) x0_ack!4719))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4717) ((_ to_fp 11 53) x1_ack!4715)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4715) ((_ to_fp 11 53) a_ack!4717))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4718) ((_ to_fp 11 53) x1_ack!4715))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4718) ((_ to_fp 11 53) x2_ack!4716)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4716)
                    ((_ to_fp 11 53) x1_ack!4715))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
