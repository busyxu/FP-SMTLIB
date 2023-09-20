(declare-fun x1_ack!2893 () (_ BitVec 64))
(declare-fun x0_ack!2897 () (_ BitVec 64))
(declare-fun x2_ack!2894 () (_ BitVec 64))
(declare-fun b_ack!2896 () (_ BitVec 64))
(declare-fun a_ack!2895 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2897) ((_ to_fp 11 53) x1_ack!2893)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2893) ((_ to_fp 11 53) x2_ack!2894)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2893)
                       ((_ to_fp 11 53) x0_ack!2897))
               ((_ to_fp 11 53) x0_ack!2897))
       ((_ to_fp 11 53) x1_ack!2893)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2893)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2893)
                       ((_ to_fp 11 53) x0_ack!2897)))
       ((_ to_fp 11 53) x0_ack!2897)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2894)
                       ((_ to_fp 11 53) x1_ack!2893))
               ((_ to_fp 11 53) x1_ack!2893))
       ((_ to_fp 11 53) x2_ack!2894)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2894)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2894)
                       ((_ to_fp 11 53) x1_ack!2893)))
       ((_ to_fp 11 53) x1_ack!2893)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2893)
                    ((_ to_fp 11 53) x0_ack!2897))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2894)
                    ((_ to_fp 11 53) x1_ack!2893))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2895) ((_ to_fp 11 53) b_ack!2896))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2895) ((_ to_fp 11 53) x0_ack!2897))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2896) ((_ to_fp 11 53) x2_ack!2894))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2895) ((_ to_fp 11 53) b_ack!2896))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2895) ((_ to_fp 11 53) x0_ack!2897))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2895) ((_ to_fp 11 53) x1_ack!2893))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2896) ((_ to_fp 11 53) x0_ack!2897))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2896) ((_ to_fp 11 53) x1_ack!2893)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2893) ((_ to_fp 11 53) b_ack!2896))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2893)
                    ((_ to_fp 11 53) x0_ack!2897))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2894)
                    ((_ to_fp 11 53) x1_ack!2893))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
