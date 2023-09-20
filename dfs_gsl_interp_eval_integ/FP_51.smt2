(declare-fun x1_ack!2745 () (_ BitVec 64))
(declare-fun x0_ack!2749 () (_ BitVec 64))
(declare-fun x2_ack!2746 () (_ BitVec 64))
(declare-fun b_ack!2748 () (_ BitVec 64))
(declare-fun a_ack!2747 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2749) ((_ to_fp 11 53) x1_ack!2745)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2745) ((_ to_fp 11 53) x2_ack!2746)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2745)
                       ((_ to_fp 11 53) x0_ack!2749))
               ((_ to_fp 11 53) x0_ack!2749))
       ((_ to_fp 11 53) x1_ack!2745)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2745)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2745)
                       ((_ to_fp 11 53) x0_ack!2749)))
       ((_ to_fp 11 53) x0_ack!2749)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2746)
                       ((_ to_fp 11 53) x1_ack!2745))
               ((_ to_fp 11 53) x1_ack!2745))
       ((_ to_fp 11 53) x2_ack!2746)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2746)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2746)
                       ((_ to_fp 11 53) x1_ack!2745)))
       ((_ to_fp 11 53) x1_ack!2745)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2745)
                    ((_ to_fp 11 53) x0_ack!2749))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2746)
                    ((_ to_fp 11 53) x1_ack!2745))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2747) ((_ to_fp 11 53) b_ack!2748))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2747) ((_ to_fp 11 53) x0_ack!2749))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2748) ((_ to_fp 11 53) x2_ack!2746))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2747) ((_ to_fp 11 53) b_ack!2748))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2747) ((_ to_fp 11 53) x0_ack!2749))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2747) ((_ to_fp 11 53) x1_ack!2745))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2748) ((_ to_fp 11 53) x0_ack!2749))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2748) ((_ to_fp 11 53) x1_ack!2745)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2745) ((_ to_fp 11 53) b_ack!2748))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2745)
                    ((_ to_fp 11 53) x0_ack!2749))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2746)
                    ((_ to_fp 11 53) x1_ack!2745))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
