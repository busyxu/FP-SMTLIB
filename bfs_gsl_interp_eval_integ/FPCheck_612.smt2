(declare-fun x1_ack!7669 () (_ BitVec 64))
(declare-fun x0_ack!7673 () (_ BitVec 64))
(declare-fun x2_ack!7670 () (_ BitVec 64))
(declare-fun b_ack!7672 () (_ BitVec 64))
(declare-fun a_ack!7671 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7673) ((_ to_fp 11 53) x1_ack!7669)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7669) ((_ to_fp 11 53) x2_ack!7670)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7669)
                       ((_ to_fp 11 53) x0_ack!7673))
               ((_ to_fp 11 53) x0_ack!7673))
       ((_ to_fp 11 53) x1_ack!7669)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7669)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7669)
                       ((_ to_fp 11 53) x0_ack!7673)))
       ((_ to_fp 11 53) x0_ack!7673)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7670)
                       ((_ to_fp 11 53) x1_ack!7669))
               ((_ to_fp 11 53) x1_ack!7669))
       ((_ to_fp 11 53) x2_ack!7670)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7670)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7670)
                       ((_ to_fp 11 53) x1_ack!7669)))
       ((_ to_fp 11 53) x1_ack!7669)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7669)
                    ((_ to_fp 11 53) x0_ack!7673))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7670)
                    ((_ to_fp 11 53) x1_ack!7669))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7671) ((_ to_fp 11 53) b_ack!7672))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7671) ((_ to_fp 11 53) x0_ack!7673))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7672) ((_ to_fp 11 53) x2_ack!7670))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7671) ((_ to_fp 11 53) b_ack!7672))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7671) ((_ to_fp 11 53) x0_ack!7673))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7671) ((_ to_fp 11 53) x1_ack!7669))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7672) ((_ to_fp 11 53) x0_ack!7673))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7672) ((_ to_fp 11 53) x1_ack!7669)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7669) ((_ to_fp 11 53) b_ack!7672))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7669)
                    ((_ to_fp 11 53) x0_ack!7673))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7670)
                    ((_ to_fp 11 53) x1_ack!7669))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!7672 x1_ack!7669))

(check-sat)
(exit)
