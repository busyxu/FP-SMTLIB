(declare-fun x1_ack!2688 () (_ BitVec 64))
(declare-fun x0_ack!2692 () (_ BitVec 64))
(declare-fun x2_ack!2689 () (_ BitVec 64))
(declare-fun b_ack!2691 () (_ BitVec 64))
(declare-fun a_ack!2690 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2692) ((_ to_fp 11 53) x1_ack!2688)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2688) ((_ to_fp 11 53) x2_ack!2689)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2688)
                       ((_ to_fp 11 53) x0_ack!2692))
               ((_ to_fp 11 53) x0_ack!2692))
       ((_ to_fp 11 53) x1_ack!2688)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2688)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2688)
                       ((_ to_fp 11 53) x0_ack!2692)))
       ((_ to_fp 11 53) x0_ack!2692)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2689)
                       ((_ to_fp 11 53) x1_ack!2688))
               ((_ to_fp 11 53) x1_ack!2688))
       ((_ to_fp 11 53) x2_ack!2689)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2689)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2689)
                       ((_ to_fp 11 53) x1_ack!2688)))
       ((_ to_fp 11 53) x1_ack!2688)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2688)
                    ((_ to_fp 11 53) x0_ack!2692))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2689)
                    ((_ to_fp 11 53) x1_ack!2688))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2690) ((_ to_fp 11 53) b_ack!2691))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2690) ((_ to_fp 11 53) x0_ack!2692))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2691) ((_ to_fp 11 53) x2_ack!2689))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2690) ((_ to_fp 11 53) b_ack!2691))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2690) ((_ to_fp 11 53) x0_ack!2692))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2690) ((_ to_fp 11 53) x1_ack!2688)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2688) ((_ to_fp 11 53) a_ack!2690))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2691) ((_ to_fp 11 53) x1_ack!2688))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2691) ((_ to_fp 11 53) x2_ack!2689))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2689)
                    ((_ to_fp 11 53) x1_ack!2688))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
