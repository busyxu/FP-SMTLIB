(declare-fun x1_ack!2818 () (_ BitVec 64))
(declare-fun x0_ack!2822 () (_ BitVec 64))
(declare-fun x2_ack!2819 () (_ BitVec 64))
(declare-fun b_ack!2821 () (_ BitVec 64))
(declare-fun a_ack!2820 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2822) ((_ to_fp 11 53) x1_ack!2818)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2818) ((_ to_fp 11 53) x2_ack!2819)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2818)
                       ((_ to_fp 11 53) x0_ack!2822))
               ((_ to_fp 11 53) x0_ack!2822))
       ((_ to_fp 11 53) x1_ack!2818)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2818)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2818)
                       ((_ to_fp 11 53) x0_ack!2822)))
       ((_ to_fp 11 53) x0_ack!2822)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2819)
                       ((_ to_fp 11 53) x1_ack!2818))
               ((_ to_fp 11 53) x1_ack!2818))
       ((_ to_fp 11 53) x2_ack!2819)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2819)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2819)
                       ((_ to_fp 11 53) x1_ack!2818)))
       ((_ to_fp 11 53) x1_ack!2818)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2818)
                    ((_ to_fp 11 53) x0_ack!2822))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2819)
                    ((_ to_fp 11 53) x1_ack!2818))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2820) ((_ to_fp 11 53) b_ack!2821))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2820) ((_ to_fp 11 53) x0_ack!2822))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2821) ((_ to_fp 11 53) x2_ack!2819))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2820) ((_ to_fp 11 53) b_ack!2821))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2820) ((_ to_fp 11 53) x0_ack!2822))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2820) ((_ to_fp 11 53) x1_ack!2818)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2818) ((_ to_fp 11 53) a_ack!2820))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2821) ((_ to_fp 11 53) x1_ack!2818))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2821) ((_ to_fp 11 53) x2_ack!2819))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2819)
                    ((_ to_fp 11 53) x1_ack!2818))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
