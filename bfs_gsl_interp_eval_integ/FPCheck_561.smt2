(declare-fun x1_ack!7073 () (_ BitVec 64))
(declare-fun x0_ack!7077 () (_ BitVec 64))
(declare-fun x2_ack!7074 () (_ BitVec 64))
(declare-fun b_ack!7076 () (_ BitVec 64))
(declare-fun a_ack!7075 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7077) ((_ to_fp 11 53) x1_ack!7073)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7073) ((_ to_fp 11 53) x2_ack!7074)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7073)
                       ((_ to_fp 11 53) x0_ack!7077))
               ((_ to_fp 11 53) x0_ack!7077))
       ((_ to_fp 11 53) x1_ack!7073)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7073)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7073)
                       ((_ to_fp 11 53) x0_ack!7077)))
       ((_ to_fp 11 53) x0_ack!7077)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7074)
                       ((_ to_fp 11 53) x1_ack!7073))
               ((_ to_fp 11 53) x1_ack!7073))
       ((_ to_fp 11 53) x2_ack!7074)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7074)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7074)
                       ((_ to_fp 11 53) x1_ack!7073)))
       ((_ to_fp 11 53) x1_ack!7073)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7073)
                    ((_ to_fp 11 53) x0_ack!7077))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7074)
                    ((_ to_fp 11 53) x1_ack!7073))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7075) ((_ to_fp 11 53) b_ack!7076))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7075) ((_ to_fp 11 53) x0_ack!7077))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7076) ((_ to_fp 11 53) x2_ack!7074))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7075) ((_ to_fp 11 53) b_ack!7076))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7075) ((_ to_fp 11 53) x0_ack!7077))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7075) ((_ to_fp 11 53) x1_ack!7073))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7076) ((_ to_fp 11 53) x0_ack!7077))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7076) ((_ to_fp 11 53) x1_ack!7073)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7073) ((_ to_fp 11 53) b_ack!7076))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7073)
                    ((_ to_fp 11 53) x0_ack!7077))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7074)
                    ((_ to_fp 11 53) x1_ack!7073))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!7076 x1_ack!7073))

(check-sat)
(exit)
