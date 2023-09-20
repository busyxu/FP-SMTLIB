(declare-fun x1_ack!7749 () (_ BitVec 64))
(declare-fun x0_ack!7753 () (_ BitVec 64))
(declare-fun x2_ack!7750 () (_ BitVec 64))
(declare-fun b_ack!7752 () (_ BitVec 64))
(declare-fun a_ack!7751 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7753) ((_ to_fp 11 53) x1_ack!7749)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7749) ((_ to_fp 11 53) x2_ack!7750)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7749)
                       ((_ to_fp 11 53) x0_ack!7753))
               ((_ to_fp 11 53) x0_ack!7753))
       ((_ to_fp 11 53) x1_ack!7749)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7749)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7749)
                       ((_ to_fp 11 53) x0_ack!7753)))
       ((_ to_fp 11 53) x0_ack!7753)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7750)
                       ((_ to_fp 11 53) x1_ack!7749))
               ((_ to_fp 11 53) x1_ack!7749))
       ((_ to_fp 11 53) x2_ack!7750)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7750)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7750)
                       ((_ to_fp 11 53) x1_ack!7749)))
       ((_ to_fp 11 53) x1_ack!7749)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7749)
                    ((_ to_fp 11 53) x0_ack!7753))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7750)
                    ((_ to_fp 11 53) x1_ack!7749))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7751) ((_ to_fp 11 53) b_ack!7752))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7751) ((_ to_fp 11 53) x0_ack!7753))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7752) ((_ to_fp 11 53) x2_ack!7750))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7751) ((_ to_fp 11 53) b_ack!7752))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7751) ((_ to_fp 11 53) x0_ack!7753))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7751) ((_ to_fp 11 53) x1_ack!7749))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7752) ((_ to_fp 11 53) x0_ack!7753)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7749)
                    ((_ to_fp 11 53) x0_ack!7753))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!7751 x0_ack!7753))

(check-sat)
(exit)
