(declare-fun x1_ack!2723 () (_ BitVec 64))
(declare-fun x0_ack!2727 () (_ BitVec 64))
(declare-fun x2_ack!2724 () (_ BitVec 64))
(declare-fun b_ack!2726 () (_ BitVec 64))
(declare-fun a_ack!2725 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2727) ((_ to_fp 11 53) x1_ack!2723)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2723) ((_ to_fp 11 53) x2_ack!2724)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2723)
                       ((_ to_fp 11 53) x0_ack!2727))
               ((_ to_fp 11 53) x0_ack!2727))
       ((_ to_fp 11 53) x1_ack!2723)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2723)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2723)
                       ((_ to_fp 11 53) x0_ack!2727)))
       ((_ to_fp 11 53) x0_ack!2727)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2724)
                       ((_ to_fp 11 53) x1_ack!2723))
               ((_ to_fp 11 53) x1_ack!2723))
       ((_ to_fp 11 53) x2_ack!2724)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2724)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2724)
                       ((_ to_fp 11 53) x1_ack!2723)))
       ((_ to_fp 11 53) x1_ack!2723)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2723)
                    ((_ to_fp 11 53) x0_ack!2727))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2724)
                    ((_ to_fp 11 53) x1_ack!2723))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2725) ((_ to_fp 11 53) b_ack!2726))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2725) ((_ to_fp 11 53) x0_ack!2727))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2726) ((_ to_fp 11 53) x2_ack!2724))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2725) ((_ to_fp 11 53) b_ack!2726))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2725) ((_ to_fp 11 53) x0_ack!2727))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2725) ((_ to_fp 11 53) x1_ack!2723)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2723) ((_ to_fp 11 53) a_ack!2725))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2726) ((_ to_fp 11 53) x1_ack!2723))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2726) ((_ to_fp 11 53) x2_ack!2724))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2724)
                    ((_ to_fp 11 53) x1_ack!2723))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
