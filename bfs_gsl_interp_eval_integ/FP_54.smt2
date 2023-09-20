(declare-fun x1_ack!2635 () (_ BitVec 64))
(declare-fun x0_ack!2639 () (_ BitVec 64))
(declare-fun x2_ack!2636 () (_ BitVec 64))
(declare-fun b_ack!2638 () (_ BitVec 64))
(declare-fun a_ack!2637 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2639) ((_ to_fp 11 53) x1_ack!2635)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2635) ((_ to_fp 11 53) x2_ack!2636)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2635)
                       ((_ to_fp 11 53) x0_ack!2639))
               ((_ to_fp 11 53) x0_ack!2639))
       ((_ to_fp 11 53) x1_ack!2635)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2635)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2635)
                       ((_ to_fp 11 53) x0_ack!2639)))
       ((_ to_fp 11 53) x0_ack!2639)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2636)
                       ((_ to_fp 11 53) x1_ack!2635))
               ((_ to_fp 11 53) x1_ack!2635))
       ((_ to_fp 11 53) x2_ack!2636)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2636)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2636)
                       ((_ to_fp 11 53) x1_ack!2635)))
       ((_ to_fp 11 53) x1_ack!2635)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2635)
                    ((_ to_fp 11 53) x0_ack!2639))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2636)
                    ((_ to_fp 11 53) x1_ack!2635))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2637) ((_ to_fp 11 53) b_ack!2638))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2637) ((_ to_fp 11 53) x0_ack!2639))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2638) ((_ to_fp 11 53) x2_ack!2636))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2637) ((_ to_fp 11 53) b_ack!2638))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2637) ((_ to_fp 11 53) x0_ack!2639))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2637) ((_ to_fp 11 53) x1_ack!2635)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2635) ((_ to_fp 11 53) a_ack!2637))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2638) ((_ to_fp 11 53) x1_ack!2635))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2638) ((_ to_fp 11 53) x2_ack!2636))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2636)
                    ((_ to_fp 11 53) x1_ack!2635))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
