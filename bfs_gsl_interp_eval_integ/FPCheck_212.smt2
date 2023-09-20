(declare-fun x1_ack!2504 () (_ BitVec 64))
(declare-fun x0_ack!2508 () (_ BitVec 64))
(declare-fun x2_ack!2505 () (_ BitVec 64))
(declare-fun b_ack!2507 () (_ BitVec 64))
(declare-fun a_ack!2506 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2508) ((_ to_fp 11 53) x1_ack!2504)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2504) ((_ to_fp 11 53) x2_ack!2505)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2504)
                       ((_ to_fp 11 53) x0_ack!2508))
               ((_ to_fp 11 53) x0_ack!2508))
       ((_ to_fp 11 53) x1_ack!2504)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2504)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2504)
                       ((_ to_fp 11 53) x0_ack!2508)))
       ((_ to_fp 11 53) x0_ack!2508)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2505)
                       ((_ to_fp 11 53) x1_ack!2504))
               ((_ to_fp 11 53) x1_ack!2504))
       ((_ to_fp 11 53) x2_ack!2505)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2505)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2505)
                       ((_ to_fp 11 53) x1_ack!2504)))
       ((_ to_fp 11 53) x1_ack!2504)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2504)
                    ((_ to_fp 11 53) x0_ack!2508))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2505)
                    ((_ to_fp 11 53) x1_ack!2504))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2506) ((_ to_fp 11 53) b_ack!2507))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2506) ((_ to_fp 11 53) x0_ack!2508))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2507) ((_ to_fp 11 53) x2_ack!2505))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2506) ((_ to_fp 11 53) b_ack!2507))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2506) ((_ to_fp 11 53) x0_ack!2508))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2506) ((_ to_fp 11 53) x1_ack!2504)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2504) ((_ to_fp 11 53) a_ack!2506))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2507) ((_ to_fp 11 53) x1_ack!2504))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2507) ((_ to_fp 11 53) x2_ack!2505))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2505)
                    ((_ to_fp 11 53) x1_ack!2504))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!2507 x1_ack!2504))

(check-sat)
(exit)
